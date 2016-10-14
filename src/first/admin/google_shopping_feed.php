<?php

/**
 * ECSHOP 商品管理程序
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: goods.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . '/' . ADMIN_PATH . '/includes/lib_goods.php');
require_once(ROOT_PATH . '/' . ADMIN_PATH. "/nusoap/nusoap.php");   //代码增加  By  www.68ecshop.com
include_once(ROOT_PATH . '/includes/cls_image.php');
$image = new cls_image($_CFG['bgcolor']);
$exc = new exchange($ecs->table('goods'), $db, 'goods_id', 'goods_name');
$exc1 = new exchange($ecs->table('goods_url'), $db, 'url_id', 'product_url');
/*------------------------------------------------------ */
//-- 商品列表，商品回收站
/*------------------------------------------------------ */


$i=1;


	$filter['cat_id']           = empty($_REQUEST['cat_id']) ? 0 : intval($_REQUEST['cat_id']);
	$filter['intro_type']       = empty($_REQUEST['intro_type']) ? 'is_best' : trim($_REQUEST['intro_type']);
	$filter['is_promote']       = empty($_REQUEST['is_promote']) ? 0 : intval($_REQUEST['is_promote']);
	$filter['stock_warning']    = empty($_REQUEST['stock_warning']) ? 0 : intval($_REQUEST['stock_warning']);
	$filter['brand_id']         = empty($_REQUEST['brand_id']) ? 0 : intval($_REQUEST['brand_id']);
	$filter['keyword']          = empty($_REQUEST['keyword']) ? '' : trim($_REQUEST['keyword']);
	$filter['suppliers_id']		= isset($_REQUEST['suppliers_id']) ? (empty($_REQUEST['suppliers_id']) ? '' : trim($_REQUEST['suppliers_id'])) : '';
	$filter['is_on_sale']		= isset($_REQUEST['is_on_sale']) ? ((empty($_REQUEST['is_on_sale']) && $_REQUEST['is_on_sale'] === 0) ? '' : trim($_REQUEST['is_on_sale'])) : '1';
	if (isset($_REQUEST['is_ajax']) && $_REQUEST['is_ajax'] == 1)
	{
		$filter['keyword'] = json_str_iconv($filter['keyword']);
	}
	$filter['sort_by']          = empty($_REQUEST['sort_by']) ? 'goods_id' : trim($_REQUEST['sort_by']);
	$filter['sort_order']       = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);
	$filter['extension_code']   = empty($_REQUEST['extension_code']) ? '' : trim($_REQUEST['extension_code']);
	$filter['collect_link']		= empty($_REQUEST['collect_link']) ? '' : trim($_REQUEST['collect_link']);
	$filter['favorite_num']		= empty($_REQUEST['favorite_num']) ? 0 : intval($_REQUEST['favorite_num']);
	$filter['review_num']		= empty($_REQUEST['review_num']) ? 0 : intval($_REQUEST['review_num']);
	$filter['start_time']		= empty($_REQUEST['start_time']) ? '' : (strpos($_REQUEST['start_time'], '-') > 0 ?  local_strtotime($_REQUEST['start_time']) : $_REQUEST['start_time']);
	$filter['end_time']			= empty($_REQUEST['end_time']) ? '' : (strpos($_REQUEST['end_time'], '-') > 0 ?  local_strtotime($_REQUEST['end_time']) : $_REQUEST['end_time']);

	
	$filter['is_delete']        = $is_delete;
	$filter['real_goods']       = $real_goods;
	
	$filter['supp'] = (isset($_REQUEST['supp']) && !empty($_REQUEST['supp']) && intval($_REQUEST['supp'])>0) ? intval($_REQUEST['supp']) : 0;

	$where  = " 1 ";
	$where .= $filter['cat_id'] > 0 ? " AND " . get_children($filter['cat_id']) : '';

	/* 推荐类型 */
	switch ($filter['intro_type'])
	{
		case 'is_best':
			$where .= " AND is_best=1";
			break;
		case 'is_hot':
			$where .= ' AND is_hot=1';
			break;
		case 'is_new':
			$where .= ' AND is_new=1';
			break;
		case 'is_wish':
			$where .= ' AND is_wish=1';
			break;	
		case 'not_is_wish':
			$where .= ' AND is_wish=0';
			break;		
			
		case 'is_promote':
			$where .= " AND is_promote = 1 AND promote_price > 0 AND promote_start_date <= '$today' AND promote_end_date >= '$today'";
			break;
		case 'all_type';
			$where .= " AND (is_best=1 OR is_hot=1 OR is_new=1 OR (is_promote = 1 AND promote_price > 0 AND promote_start_date <= '" . $today . "' AND promote_end_date >= '" . $today . "'))";
	}

	/* 库存警告 */
	if ($filter['stock_warning'])
	{
		$where .= ' AND goods_number <= warn_number ';
	}

	/* 品牌 */
	if ($filter['brand_id'])
	{
		$where .= " AND brand_id='$filter[brand_id]'";
	}
	
	if ($filter['favorite_num'])
	{
		$where .= " AND favorite_num>='$filter[favorite_num]'";
	}
	if ($filter['review_num'])
	{
		$where .= " AND review_num>='$filter[review_num]'";
	}
	
	if ($filter['start_time'])
	{
		$where .= " AND g.add_time >= '$filter[start_time]'";
	}
	if ($filter['end_time'])
	{
		$where .= " AND g.add_time <= '$filter[end_time]'";
	}
	/* 扩展 */
	if ($filter['extension_code'])
	{
		$where .= " AND extension_code='$filter[extension_code]'";
	}

	/* 关键字 */
	if (!empty($filter['keyword']))
	{
		$where .= " AND (goods_id = '" . mysql_like_quote($filter['keyword']) . "' OR goods_name LIKE '%" . mysql_like_quote($filter['keyword']) . "%' )";
	}
	if (!empty($filter['collect_link']))
	{
		$where .= " AND collect_link LIKE '%" . mysql_like_quote($filter['collect_link']) . "%'";
	}


   if ($real_goods > -1)
	{
		$where .= " AND is_real='$real_goods'";
	}

	/* 上架 */
	if ($filter['is_on_sale'] !== '')
	{
		$where .= " AND (is_on_sale = '" . $filter['is_on_sale'] . "')";
	}
	
	$where_supp = ($filter['supp']>0) ? ' AND g.supplier_id > 0' : ' AND g.supplier_id = 0';
	
	/* 供货商 */
	if(intval($_REQUEST['supp'])>0){
		
		/* 代码修改_start  By  www.68ecshop.com */
		if (!empty($filter['suppliers_id']))
		{
			//$where .= " AND (supplier_id = '" . $filter['suppliers_id'] . "')";
			$where_supp = " AND (g.supplier_id = '" . $filter['suppliers_id'] . "')";
		}
		$filter['supplier_status'] = $_REQUEST['supplier_status']!='' ? trim($_REQUEST['supplier_status']) : '';
		if (isset($filter['supplier_status']) && $filter['supplier_status']!='')
		{
			//$where .= " AND (supplier_status = '" . $filter['supplier_status'] . "')";
			$where_supp .= " AND (supplier_status = '" . $filter['supplier_status'] . "')";
		}
		/* 代码修改_end  By  www.68ecshop.com */
	}
	
$where .= $where_supp;

$sql = "SELECT goods_sn,goods_id,goods_name,goods_number,keywords,goods_brief,shop_price,goods_img,cat_id,is_on_sale".
			" FROM " . $GLOBALS['ecs']->table('goods')  . "  as g where $where".
			" ORDER by goods_id desc";

$goods_list = $GLOBALS['db']->getAll($sql);

$sql = "SELECT cat_id, google_cat_id from ecs_category";

$cat_list = $GLOBALS['db']->getAll($sql);

foreach($cat_list as $k=>$v)
{
	$cat_table[$v['cat_id']] = $v['google_cat_id'];
	//print($v['cat_id']);
}

foreach($goods_list as $k=>$v)
{
	$goods_list[$k]['google_cat_id'] = $cat_table[$v['cat_id']];
	//print($cat_table[$v['cat_id']]);
}

/*			
$res = $GLOBALS['db']->query($sql);

while ($row = $GLOBALS['db']->fetchRow($res))
{
	
	$goods_id = $row['goods_id'];
	$goods_img = '';
	
	$sql = 'SELECT img_url ' .
		' FROM ' . $GLOBALS['ecs']->table('goods_gallery') .
		" where goods_id=$goods_id and is_attr_image=0 ORDER by img_sort limit 1 ";
	$row['goods_img'] = $GLOBALS['db']->getOne($sql);
	if ( strpos ( $row['goods_img'], 'http://' ) === false && strpos ( $row['goods_img'], 'https://' ) === false) {
		$goods_img = $ecs->url().$row['goods_img'];
	}
	else
	{
		$goods_img = $row['goods_img'];
	}
	
	
	$sql = 'SELECT img_url ' .
		' FROM ' . $GLOBALS['ecs']->table('goods_gallery') .
		" where goods_id=$goods_id ORDER by `is_attr_image` ASC, `img_sort` ASC limit 30 ";
	$img_list = $GLOBALS['db']->getCol($sql);
	
	foreach($img_list as $k=>$v)
	{
		if ( strpos ( $v, 'http://' ) === false && strpos ( $v, 'https://' ) === false) {
			$img_list[$k] = $ecs->url().$v;
		}
	}
	
	$sql = 'SELECT tag_words' .
		' FROM ' . $GLOBALS['ecs']->table('tag') .
		" where goods_id=$goods_id GROUP BY tag_words";
	$tag_words = $GLOBALS['db']->getCol($sql);
	$tag_words = join(',',$tag_words);
	
	

	
	//属性组合
	$properties = get_goods_properties($goods_id);
	$goods_attrs = $properties['spe'];
	$properties = $properties['pro'];
	
	
	
	$properties_str = '';
	foreach($properties as $key=>$val)
	{
		$properties_str .= $val['name'].':'.$val['value']."\n";
	}
	
	
	foreach($goods_attrs as $key=>$val)
	{
		$properties_str .= $val['name'].':';
		$values = array();
		foreach($val['values'] as $v)
		{
			$values[] = $v['label'];
		}
		$properties_str .= join(',',$values)."\n";
	}
	
	$attr_values = $row['goods_id'];
	$goods_list[$i]['goods_id'] = $row['goods_id'];//
	$goods_list[$i]['goods_attr_id'] = $attr_values;//
	$goods_list[$i]['goods_name'] = $row['goods_name'];//
	$goods_list[$i]['color'] = $property_1;//
	$goods_list[$i]['size'] = $property_2;//
	$goods_list[$i]['goods_number'] = $row['goods_number'];//
	$goods_list[$i]['keywords'] = $row['keywords'];//
	$goods_list[$i]['goods_brief'] = $row['goods_brief'];
	$goods_list[$i]['shop_price'] = $row['shop_price'];
	$goods_list[$i]['sale_price'] = $row['shop_price']/0.8;
	$goods_list[$i]['goods_img'] = $goods_img;
	
	
	$i++;
	
	if(!empty($goods_attrs))
	{
		//对其他属性进行组合
		$goods_attr_list = array();//将goods_attr_id进行分组
		if (!empty($goods_attrs))
		{
			foreach ($goods_attrs as $key => $item)
			{
				$tmp = array();
				if (!empty($item['values']))
				{
					foreach ($item['values'] as $k => $j)
					{
						$tmp[] = $j['id'];
					}
				}
				$goods_attr_list[] = $tmp;
			}
		}
		
		$goods_attr_list = get_array_combination($goods_attr_list);
	
		foreach($goods_attr_list as $key=>$val)
		{
			
			$property_1 = '';
			$property_2 = '';
			$val_a = explode('|',$val);
			
			
			$sql = "SELECT g.attr_value FROM " . $GLOBALS['ecs']->table('attribute') ." as a, ".$GLOBALS['ecs']->table('goods_attr') . " as g  WHERE a.attr_id=g.attr_id and goods_attr_id " . db_create_in($val_a)." order by a.attr_id asc";
			//$sql = "SELECT attr_value FROM " . $GLOBALS['ecs']->table('goods_attr')  . " where goods_attr_id " . db_create_in($val_a)."";
			
			
			$attr_value = $GLOBALS['db']->getCol($sql);
			if(!empty($attr_value))
			{
				
				$attr_values = $row['goods_id'].'-'.join('-',preg_replace("/\W/", "", $attr_value));											

				if(isset($attr_value[0]))
				{
					$property_1 = $attr_value[0];
				}
				if(isset($attr_value[1]))
				{
					$property_2 = $attr_value[1];
				}
			}
			else
			{
				$attr_values = $row['goods_id'];
			}
			
			$goods_img1 = '';
			if(isset($val_a[0]))
			{
				$sql = "SELECT img_url FROM " . $GLOBALS['ecs']->table('goods_gallery') ." as a where goods_attr_id='$val_a[0]'";
				$goods_img1 = $db->getOne($sql);
				if(empty($goods_img1))
				{
					if(isset($val_a[1]))
					{
						$sql = "SELECT img_url FROM " . $GLOBALS['ecs']->table('goods_gallery') ." as a where goods_attr_id='$val_a[1]'";
						$goods_img1 = $db->getOne($sql);
					}
				}
				if(!empty($goods_img1))
				{
					if ( strpos ( $goods_img1, 'http://' ) === false && strpos ( $goods_img1, 'https://' ) === false) {
						$goods_img = $ecs->url().$goods_img1;
					}
				}
			}
			
			
			$attr_values = $row['goods_id'];
			$goods_list[$i]['goods_id'] = $row['goods_id'];//
			$goods_list[$i]['goods_attr_id'] = $attr_values;//
			$goods_list[$i]['goods_name'] = $row['goods_name'];//
			$goods_list[$i]['color'] = $property_1;//
			$goods_list[$i]['size'] = $property_2;//
			$goods_list[$i]['goods_number'] = $row['goods_number'];//
			$goods_list[$i]['keywords'] = $row['keywords'];//
			$goods_list[$i]['goods_brief'] = $row['goods_brief'];
			$goods_list[$i]['shop_price'] = $row['shop_price'];
			$goods_list[$i]['sale_price'] = $row['shop_price']/0.8;
			$goods_list[$i]['goods_img'] = $goods_img;

			
			$i++;

		}
	}
	
}
*/

$smarty->assign('goods_list',   $goods_list);

$smarty->display('google_shopping_feed.xml');

?>