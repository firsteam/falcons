<?php
define('IN_ECS', true);
@set_time_limit(300);
require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . '/' . ADMIN_PATH . '/includes/lib_goods.php');
include_once(ROOT_PATH . '/includes/cls_image.php');
$image = new cls_image($_CFG['bgcolor']);


$urlstr = intval($_GET['urlstr']);
$downloadImg = intval($_GET['downloadImg']);
$brand_id = intval($_GET['brand_id']);
$cat_id = intval($_GET['cat_id']);
$keywords = $_GET['keywords'];

$ur_here = $_LANG['14_get_taobao'];
$smarty->assign('ur_here', $ur_here);
	
if(!$urlstr){
	$smarty->assign('cat_list',     cat_list(0, $cat_id));
    $smarty->assign('brand_list',   get_brand_list());
	$smarty->display ( 'gettaobao.html' );
}else{	
	preg_match('/id=(\d{10,})/',$urlstr,$urls);
	print_r($urls);
	
	
}

function getGoods($id) {
	$json = file_get_contents_curl("https://hws.alicdn.com/cache/mtop.wdetail.getItemDescx/4.1/?data=%7B%22item_num_id%22%3A%22{$id}%22%7D");
	$data = json_decode($json,1);
	if($data['data']['pages']){
		$content = "";
		foreach($data['data']['pages'] as $p){
			$content .= $p;
		}
		$content = str_replace("<img>","<img src=",$content);
		$content = str_replace("</img>",">",$content);
		$content = str_replace("txt","p",$content);
	}
	if($content){
		$json = file_get_contents_curl("https://hws.alicdn.com/cache/wdetail/5.0/?id={$id}");
		$data = json_decode($json,1);
		$goods_name = $data['data']['itemInfoModel']['title'];
		$props = $data['data']['props'];
		if($props){
			$goods_props = '';
			foreach($props as $p){
				$goods_props .= "<p>{$p['name']}：{$p['value']}</p>";
			}
			$content = $goods_props.$content;
		}
		if($data['data']['itemInfoModel']['picsPath']){
			$imgArr = array();
			foreach($data['data']['itemInfoModel']['picsPath'] as $k=>$img){
				if($k>=$num) break;
				//$imgArr[$k] = str_replace("../",ROOT_PATH,getImg($img));
				$imgArr[$k] = getImg($img);
			}
		}
		
		if($_GET['do'] == 1){
			if($istitle == 1) $uptitle = ",goods_name='{$goods_name}'";
			$db->query("update {$ecs->table('goods')} set 
				goods_desc='{$content}',goods_thumb='{$imgArr[0]['thumb']}',goods_img='{$imgArr[0]['goods']}',original_img='{$imgArr[0]['source']}'{$uptitle} 
				where goods_id={$gid}");
			foreach($imgArr as $v){
				$db->query("insert into {$ecs->table('goods_gallery')} (goods_id,img_url,thumb_url,img_original) value ($gid,'{$v[goods]}','{$v[thumb]}','{$v[source]}')");
			}

		}else{
			include_once(ROOT_PATH . 'includes/fckeditor/fckeditor.php');
			$smarty->assign ( 'content', $content );
			$smarty->assign ( 'img_list', $imgArr );
			$smarty->assign ( 'id', $id );
			$smarty->assign ( 'gid', $gid );
			$smarty->assign ( 'istitle', $istitle );
			$smarty->assign ( 'iscomment', $iscomment );
			$smarty->assign ( 'goods_name', $goods_name );
			$smarty->assign ( 'comment_list', $comment_list );
			$smarty->display ( 'gettaobaoview.html' );
		}
	}else{
		sys_msg ( '提取失败', 0, $link );
	}
}

function getImg($url) {
	global $image,$_CFG;

	//判断是否$url前面有http
	$qz = substr($url, 0, 2);
	if(strtolower($qz) == '//'){
		$url = 'https:'.$url;
	}
	
	$fileName = ROOT_PATH.'/images/taobao/';
	$arr = explode('.',$url);
	$ext = end($arr);
	$uniq = md5($url);//设置一个唯一id
	$name = $fileName.$uniq.'.'.$ext; //图像保存的名称和路径
	$img = file_get_contents_curl($url);
	file_put_contents($name,$img);
	$thumb_url = $image->make_thumb($name, $_CFG['thumb_width'],  $_CFG['thumb_height']);
	$img_url = $image->make_thumb($name , $_CFG['image_width'],  $_CFG['image_height']);
	$img_original = $image->make_thumb($name);
	$img_original = reformat_image_name('gallery', $gid, $img_original, 'source');
    $img_url = reformat_image_name('gallery', $gid, $img_url, 'goods');
	$thumb_url = reformat_image_name('gallery_thumb', $gid, $thumb_url, 'thumb');
	return array('source'=>$img_original,'goods'=>$img_url,'thumb'=>$thumb_url);
	//return $name;
}

function get_order_sn(){
    mt_srand((double) microtime() * 1000000);
    return date('Ymd') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT);
}

function file_get_contents_curl($url){
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // 跳过证书检查
	//curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, true); // 从证书中检查SSL加密算法是否存在
	curl_setopt ($ch, CURLOPT_URL, $url); 
	curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1); 
	curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT,10); 
	$dxycontent = curl_exec($ch); 
	return $dxycontent;
}