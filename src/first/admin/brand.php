<?php

/**
 * ECSHOP 管理中心品牌管理
 * ============================================================================
 * 版权所有 2005-2011 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: brand.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
include_once(ROOT_PATH . 'includes/cls_image.php');
$image = new cls_image($_CFG['bgcolor']);

$exc = new exchange($ecs->table("brand"), $db, 'brand_id', 'brand_name');

/*------------------------------------------------------ */
//-- 品牌列表
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'list' || $_REQUEST['act'] == 'trash')
{
    admin_priv('brand_manage');
    
    $is_delete = ($_REQUEST['act'] == 'trash')? 1 : 0;
    
    $is_show = isset($_REQUEST['is_show']) ? ((empty($_REQUEST['is_show']) && $_REQUEST['is_show'] === 0) ? '' : trim($_REQUEST['is_show'])) : '';   
    

    if($_REQUEST['act'] == 'list'){
        $action_link2 = array('href' => 'brand.php?act=trash', 'text' => $_LANG['06_brand_trash']) ;
        $smarty->assign('action_link2',  $action_link2);
    } 
    else{
        $action_link2 = array('href' => 'brand.php?act=list', 'text' => $_LANG['06_brand_list']);
        $smarty->assign('action_link2',  $action_link2);
    }
    
    $smarty->assign('ur_here',      $_LANG['06_brand_brand_list']);
    $smarty->assign('action_link',  array('text' => $_LANG['07_brand_add'], 'href' => 'brand.php?act=add'));
    $smarty->assign('full_page',    1);

    $brand_list = get_brandlist($is_delete);

    $smarty->assign('brand_list',   $brand_list['brand']);
    $smarty->assign('intro_list',   get_intro_list());
    $smarty->assign('list_type',    $_REQUEST['act'] == 'list' ? 'brand' : 'trash');
    $smarty->assign('filter',       $brand_list['filter']);
    $smarty->assign('record_count', $brand_list['record_count']);
    $smarty->assign('page_count',   $brand_list['page_count']);

    assign_query_info();
    $smarty->display('brand_list.htm');
}

elseif ($_REQUEST['act'] == 'batch')
{
    $code = empty($_REQUEST['extension_code'])? '' : trim($_REQUEST['extension_code']);

    /* 取得要操作的商品编号 */
	$brand_id_arr = !empty($_POST['checkboxes']) ? $_POST['checkboxes'] : 0;
    $brand_id = !empty($_POST['checkboxes']) ? join(',', $_POST['checkboxes']) : 0;

    if (isset($_POST['type']))
    {
        /* 放入回收站 */
        if ($_POST['type'] == 'trash')
        {
            /* 检查权限 */
            check_authz_json('remove_back');

            update_brand($brand_id, 'is_delete', '1');

            /* 记录日志 */
            admin_log('', 'batch_trash', 'brand');
        }
        /* 上架 */
        elseif ($_POST['type'] == 'show')
        {
            /* 检查权限 */
            check_authz_json('brand_manage');
            update_brand($brand_id, 'is_show', '1');
        }

        /* 下架 */
        elseif ($_POST['type'] == 'not_show')
        {
            /* 检查权限 */
            check_authz_json('brand_manage');
            update_brand($brand_id, 'is_show', '0');
        }

        /* 设为精品 */
        elseif ($_POST['type'] == 'best')
        {
            /* 检查权限 */
            check_authz_json('brand_manage');
            update_brand($brand_id, 'is_best', '1');
        }

        /* 取消精品 */
        elseif ($_POST['type'] == 'not_best')
        {
            /* 检查权限 */
            check_authz_json('brand_manage');
            update_brand($brand_id, 'is_best', '0');
        }

        /* 编辑政策 */
        elseif ($_POST['type'] == 'edit_policy')
        {
            /* 检查权限 */
            check_authz_json('brand_manage');
			if($_POST['policy_middle'])
			{
				update_brand($brand_id, 'brand_policy', '"'.$_POST['policy_prefix'].$_POST['policy_middle'].$_POST['policy_postfix'].'"');
			}
			else
			{
				update_brand($brand_id, 'brand_policy', 'concat("'.$_POST['policy_prefix'].'",brand_policy,"'.$_POST['policy_postfix'].'")');
			}
        }
		
        /* 还原 */
        elseif ($_POST['type'] == 'restore')
        {
            /* 检查权限 */
            check_authz_json('remove_back');

            update_brand($brand_id, 'is_delete', '0');

            /* 记录日志 */
            admin_log('', 'batch_restore', 'brand');
        }
        /* 删除 */
        elseif ($_POST['type'] == 'drop')
        {
            /* 检查权限 */
            check_authz_json('remove_back');

            delete_brand($brand_id);

            /* 记录日志 */
            admin_log('', 'batch_remove', 'brand');
        }
		
    }
    /* 清除缓存 */
    clear_cache_files();


    make_json_result(stripslashes($_LANG['batch_handle_ok']));
   
	//$url = 'brand.php?act=query&' . str_replace('act=batch', '', $_SERVER['QUERY_STRING']);
	//ecs_header("Location: $url\n");
	exit;
    
}
/*------------------------------------------------------ */
//-- 添加品牌
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'add')
{
    /* 权限判断 */
    admin_priv('brand_manage');

    $smarty->assign('ur_here',     $_LANG['07_brand_add']);
    $smarty->assign('action_link', array('text' => $_LANG['06_goods_brand_list'], 'href' => 'brand.php?act=list'));
    $smarty->assign('form_action', 'insert');
    $smarty->assign('stype',get_street_type());

    assign_query_info();
    $smarty->assign('brand', array('sort_order'=>50, 'is_show'=>1));
    $smarty->display('brand_info.htm');
}
elseif ($_REQUEST['act'] == 'insert')
{
    /*检查品牌名是否重复*/
    admin_priv('brand_manage');

    $is_show = isset($_REQUEST['is_show']) ? intval($_REQUEST['is_show']) : 0;
    $brand_cat = intval($_REQUEST['supplier_type']);

    $is_only = $exc->is_only('brand_name', $_POST['brand_name']);
    $save['supplier_type'] = intval($_REQUEST['supplier_type']);

    if (!$is_only)
    {
        sys_msg(sprintf($_LANG['brandname_exist'], stripslashes($_POST['brand_name'])), 1);
    }

    /*对描述处理*/
    if (!empty($_POST['brand_desc']))
    {
        $_POST['brand_desc'] = $_POST['brand_desc'];
    }

     /*处理图片*/
    $img_name = basename($image->upload_image($_FILES['brand_logo'],'brandlogo'));

     /*处理URL*/
    $site_url = sanitize_url( $_POST['site_url'],'' );

    /*插入数据*/

    $sql = "INSERT INTO ".$ecs->table('brand')."(brand_name, brand_name_cn, site_url, brand_desc, brand_logo, is_show, sort_order,brand_cat,brand_policy) ".
           "VALUES ('$_POST[brand_name]', '$_POST[brand_name_cn]', '$site_url', '$_POST[brand_desc]', '$img_name', '$is_show', '$_POST[sort_order]','$brand_cat', '$_POST[brand_policy]')";
    $db->query($sql);

    admin_log($_POST['brand_name'],'add','brand');

    /* 清除缓存 */
    clear_cache_files();

    $link[0]['text'] = $_LANG['continue_add'];
    $link[0]['href'] = 'brand.php?act=add';

    $link[1]['text'] = $_LANG['back_list'];
    $link[1]['href'] = 'brand.php?act=list';

    sys_msg($_LANG['brandadd_succed'], 0, $link);
}

/*------------------------------------------------------ */
//-- 编辑品牌
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'edit')
{
    /* 权限判断 */
    admin_priv('brand_manage');
    $sql = "SELECT * ".
            "FROM " .$ecs->table('brand'). " WHERE brand_id='$_REQUEST[id]'";
    $brand = $db->GetRow($sql);

    $smarty->assign('ur_here',     $_LANG['brand_edit']);
    $smarty->assign('action_link', array('text' => $_LANG['06_goods_brand_list'], 'href' => 'brand.php?act=list&' . list_link_postfix()));
    $smarty->assign('brand',       $brand);
    $smarty->assign('form_action', 'updata');
    $smarty->assign('stype',get_street_type());
    assign_query_info();
    $smarty->display('brand_info.htm');
}
elseif ($_REQUEST['act'] == 'updata')
{
    admin_priv('brand_manage');
    if ($_POST['brand_name'] != $_POST['old_brandname'])
    {
        /*检查品牌名是否相同*/
        $is_only = $exc->is_only('brand_name', $_POST['brand_name'], $_POST['id']);

        if (!$is_only)
        {
            sys_msg(sprintf($_LANG['brandname_exist'], stripslashes($_POST['brand_name'])), 1);
        }
    }

    /*对描述处理*/
    if (!empty($_POST['brand_desc']))
    {
        $_POST['brand_desc'] = $_POST['brand_desc'];
    }

    $is_show = isset($_REQUEST['is_show']) ? intval($_REQUEST['is_show']) : 0;
    $brand_cat = intval($_REQUEST['supplier_type']);
     /*处理URL*/
    //$site_url = sanitize_url( $_POST['site_url'] );
	$site_url = $_POST['site_url'];
	
    /* 处理图片 */
    $img_name = basename($image->upload_image($_FILES['brand_logo'],'brandlogo'));
    $param = "brand_name = '$_POST[brand_name]', brand_name_cn = '$_POST[brand_name_cn]', site_url='$site_url', brand_desc='$_POST[brand_desc]', is_show='$is_show', sort_order='$_POST[sort_order]',brand_cat ='$brand_cat',brand_policy ='$_POST[brand_policy]' ";
    if (!empty($img_name))
    {
        //有图片上传
        $param .= " ,brand_logo = '$img_name' ";
    }

    if ($exc->edit($param,  $_POST['id']))
    {
        /* 清除缓存 */
        clear_cache_files();

        admin_log($_POST['brand_name'], 'edit', 'brand');

        $link[0]['text'] = $_LANG['back_list'];
        $link[0]['href'] = 'brand.php?act=list&' . list_link_postfix();
        $note = vsprintf($_LANG['brandedit_succed'], $_POST['brand_name']);
        sys_msg($note, 0, $link);
    }
    else
    {
        die($db->error());
    }
}

/*------------------------------------------------------ */
//-- 编辑品牌名称
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'edit_brand_name')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $name   = json_str_iconv(trim($_POST['val']));

    /* 检查名称是否重复 */
    if ($exc->num("brand_name",$name, $id) != 0)
    {
        make_json_error(sprintf($_LANG['brandname_exist'], $name));
    }
    else
    {
        if ($exc->edit("brand_name = '$name'", $id))
        {
            admin_log($name,'edit','brand');
            make_json_result(stripslashes($name));
        }
        else
        {
            make_json_result(sprintf($_LANG['brandedit_fail'], $name));
        }
    }
}

elseif ($_REQUEST['act'] == 'edit_brand_name_cn')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $name   = json_str_iconv(trim($_POST['val']));

    /* 检查名称是否重复 */
    if ($exc->num("brand_name_cn",$name, $id) != 0)
    {
        make_json_error(sprintf($_LANG['brandname_exist'], $name));
    }
    else
    {
        if ($exc->edit("brand_name_cn = '$name'", $id))
        {
            admin_log($name,'edit','brand');
            make_json_result(stripslashes($name));
        }
        else
        {
            make_json_result(sprintf($_LANG['brandedit_fail'], $name));
        }
    }
}

elseif ($_REQUEST['act'] == 'edit_brand_policy')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $brand_policy   = json_str_iconv(trim($_POST['val']));

    if ($exc->edit("brand_policy = '$brand_policy'", $id))
	{
		admin_log($brand_policy,'edit','brand');
		make_json_result(stripslashes($brand_policy));
	}
	else
	{
		make_json_result(sprintf($_LANG['brandedit_fail'], $brand_policy));
	}
}

elseif($_REQUEST['act'] == 'add_brand')
{
    $brand = empty($_REQUEST['brand']) ? '' : json_str_iconv(trim($_REQUEST['brand']));

    if(brand_exists($brand))
    {
        make_json_error($_LANG['brand_name_exist']);
    }
    else
    {
        $sql = "INSERT INTO " . $ecs->table('brand') . "(brand_name)" .
               "VALUES ( '$brand')";

        $db->query($sql);
        $brand_id = $db->insert_id();

        $arr = array("id"=>$brand_id, "brand"=>$brand);

        make_json_result($arr);
    }
}
/*------------------------------------------------------ */
//-- 编辑排序序号
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'edit_sort_order')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $order  = intval($_POST['val']);
    $name   = $exc->get_name($id);

    if ($exc->edit("sort_order = '$order'", $id))
    {
        admin_log(addslashes($name),'edit','brand');

        make_json_result($order);
    }
    else
    {
        make_json_error(sprintf($_LANG['brandedit_fail'], $name));
    }
}

elseif ($_REQUEST['act'] == 'edit_keywords')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $keywords  = ($_POST['val']);
    $name   = $exc->get_name($id);

    if ($exc->edit("keywords = '$keywords'", $id))
    {
        admin_log(addslashes($name),'edit','brand');

        make_json_result($keywords);
    }
    else
    {
        make_json_error(sprintf($_LANG['brandedit_fail'], $name));
    }
}

elseif ($_REQUEST['act'] == 'edit_brand_policy')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $brand_policy  = ($_POST['val']);
    $name   = $exc->get_name($id);

    if ($exc->edit("brand_policy = '$brand_policy'", $id))
    {
        admin_log(addslashes($name),'edit','brand');

        make_json_result($brand_policy);
    }
    else
    {
        make_json_error(sprintf($_LANG['brandedit_fail'], $name));
    }
}
/*------------------------------------------------------ */
//-- 切换是否显示
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'toggle_show')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $val    = intval($_POST['val']);

    $exc->edit("is_show='$val'", $id);

    make_json_result($val);
}

elseif ($_REQUEST['act'] == 'toggle_best')
{
    check_authz_json('brand_manage');

    $id     = intval($_POST['id']);
    $val    = intval($_POST['val']);

    $exc->edit("is_best='$val'", $id);

    make_json_result($val);
}

/*------------------------------------------------------ */
//-- 删除品牌
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'remove')
{
    check_authz_json('brand_manage');

    $id = intval($_GET['id']);

    /* 删除该品牌的图标 */
    $sql = "SELECT brand_logo FROM " .$ecs->table('brand'). " WHERE brand_id = '$id'";
    $logo_name = $db->getOne($sql);
    if (!empty($logo_name))
    {
        @unlink(ROOT_PATH . DATA_DIR . '/brandlogo/' .$logo_name);
    }

    $exc->drop($id);

    /* 更新商品的品牌编号 */
    $sql = "UPDATE " .$ecs->table('goods'). " SET brand_id=0 WHERE brand_id='$id'";
    $db->query($sql);

    $url = 'brand.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);

    ecs_header("Location: $url\n");
    exit;
}

/*------------------------------------------------------ */
//-- 删除品牌图片
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'drop_logo')
{
    /* 权限判断 */
    admin_priv('brand_manage');
    $brand_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    /* 取得logo名称 */
    $sql = "SELECT brand_logo FROM " .$ecs->table('brand'). " WHERE brand_id = '$brand_id'";
    $logo_name = $db->getOne($sql);

    if (!empty($logo_name))
    {
        @unlink(ROOT_PATH . DATA_DIR . '/brandlogo/' .$logo_name);
        $sql = "UPDATE " .$ecs->table('brand'). " SET brand_logo = '' WHERE brand_id = '$brand_id'";
        $db->query($sql);
    }
    $link= array(array('text' => $_LANG['brand_edit_lnk'], 'href' => 'brand.php?act=edit&id=' . $brand_id), array('text' => $_LANG['brand_list_lnk'], 'href' => 'brand.php?act=list'));
    sys_msg($_LANG['drop_brand_logo_success'], 0, $link);
}

/*------------------------------------------------------ */
//-- 排序、分页、查询
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'query')
{
    $is_delete = empty($_REQUEST['is_delete']) ? 0 : intval($_REQUEST['is_delete']);
    
    $code = empty($_REQUEST['extension_code']) ? '' : trim($_REQUEST['extension_code']);
        
    $brand_list = get_brandlist($is_delete);
    $smarty->assign('brand_list',   $brand_list['brand']);
    $smarty->assign('filter',       $brand_list['filter']);
    $smarty->assign('record_count', $brand_list['record_count']);
    $smarty->assign('page_count',   $brand_list['page_count']);
    
    $smarty->assign('list_type',    $is_delete ? 'trash' : 'brand');
    $smarty->assign('use_storage',  empty($_CFG['use_storage']) ? 0 : 1);

    /* 排序标记 */
    $sort_flag  = sort_flag($brand_list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);
    
    make_json_result($smarty->fetch('brand_list.htm'), '',
        array('filter' => $brand_list['filter'], 'page_count' => $brand_list['page_count']));
}

/**
 * 获取品牌列表
 *
 * @access  public
 * @return  array
 */
function get_brandlist($is_delete)
{
    $param_str = '-' . $is_delete;
    $result = get_filter($param_str);
    if ($result === false)
    {
        /* 分页大小 */
        $filter = array();
        
        $filter['intro_type']       = empty($_REQUEST['intro_type']) ? '' : trim($_REQUEST['intro_type']);
        $filter['is_show'] = isset($_REQUEST['is_show']) ? ((empty($_REQUEST['is_show']) && $_REQUEST['is_show'] === 0) ? '' : trim($_REQUEST['is_show'])) : '';
		$filter['favorite_num']   = empty($_REQUEST['favorite_num']) ? 0 : intval($_REQUEST['favorite_num']);
		$filter['review_num']   = empty($_REQUEST['review_num']) ? 0 : intval($_REQUEST['review_num']);
        $filter['keyword']   = empty($_REQUEST['keyword']) ? '' : trim($_REQUEST['keyword']);
        
        if (isset($_REQUEST['is_ajax']) && $_REQUEST['is_ajax'] == 1)
        {
            $filter['keyword'] = json_str_iconv($filter['keyword']);
        }
        
		$filter['is_show_card']   = isset($_REQUEST['is_show_card']) ? trim($_REQUEST['is_show_card'])  : (isset($_COOKIE['ECS']['is_show_card']) ? $_COOKIE['ECS']['is_show_card'] : 0);
		$filter['is_show_keywords']   = isset($_REQUEST['is_show_keywords']) ? trim($_REQUEST['is_show_keywords'])  : (isset($_COOKIE['ECS']['is_show_keywords']) ? $_COOKIE['ECS']['is_show_keywords'] : 0);
		$filter['is_show_desc']   = isset($_REQUEST['is_show_desc']) ? trim($_REQUEST['is_show_desc'])  : (isset($_COOKIE['ECS']['is_show_desc']) ? $_COOKIE['ECS']['is_show_desc'] : 0);
		$filter['is_show_policy']   = isset($_REQUEST['is_show_policy']) ? trim($_REQUEST['is_show_policy'])  : (isset($_COOKIE['ECS']['is_show_policy']) ? $_COOKIE['ECS']['is_show_policy'] : 0);
		
		setcookie('ECS[is_show_card]', $filter['is_show_card'], gmtime() + 86400 * 7);
		setcookie('ECS[is_show_keywords]', $filter['is_show_keywords'], gmtime() + 86400 * 7);
		setcookie('ECS[is_show_desc]', $filter['is_show_desc'], gmtime() + 86400 * 7);
		setcookie('ECS[is_show_policy]', $filter['is_show_policy'], gmtime() + 86400 * 7);
        
        $filter['sort_by']          = empty($_REQUEST['sort_by']) ? 'sort_order' : trim($_REQUEST['sort_by']);
        $filter['sort_order']       = empty($_REQUEST['sort_order']) ? 'ASC' : trim($_REQUEST['sort_order']);
        
		$filter['is_delete'] = $is_delete;
        
        /* 推荐类型 */
        switch ($filter['intro_type'])
        {
            case 'is_best':
                $where .= " AND is_best=1";
                break;
           
            case 'not_best';
                $where .= " AND is_best!=1";
        }
        
        /* 上架 */
        if ($filter['is_show'] !== '')
        {
            $where .= " AND (is_show = '" . $filter['is_show'] . "')";
        }
        
        if ($filter['favorite_num'])
        {
            $where .= " AND favorite_num>='$filter[favorite_num]'";
        }
		if ($filter['review_num'])
        {
            $where .= " AND review_num>='$filter[review_num]'";
        }
        
        /* 关键字 */
        if (!empty($filter['keyword']))
        {
            $keyword = mysql_like_quote($filter['keyword']);
            $where .= ' AND site_url like \'%'.$keyword.'%\' or brand_name like \'%'.$keyword.'%\' or brand_name_cn like \'%'.$keyword.'%\'';
        }
        
        
        /* 记录总数以及页数 */
        $sql = "SELECT COUNT(*) FROM ".$GLOBALS['ecs']->table('brand') .' WHERE is_delete='.$is_delete. $where;
        
        $filter['record_count'] = $GLOBALS['db']->getOne($sql);

        $filter = page_and_size($filter);

        /* 查询记录 */
    
        $sql = "SELECT * FROM ".$GLOBALS['ecs']->table('brand')." WHERE is_delete=".$is_delete. $where. 
                " ORDER BY $filter[sort_by] $filter[sort_order] ".
                " LIMIT " . $filter['start'] . ",$filter[page_size]";
        
        $filter['keyword'] = stripslashes($filter['keyword']);
        set_filter($filter, $sql, $param_str);
    }
    else
    {
        $sql    = $result['sql'];
        $filter = $result['filter'];
    }
    $row = $GLOBALS['db']->getAll($sql);
    
    if($filter['is_show_card'])
    {
        foreach($row as $key=>$val)
    	{
    		 $goods = array();
             $goods_sql = "select goods_id,goods_name,goods_thumb,goods_img,shop_price,collect_link from " . $GLOBALS['ecs']->table('goods') . " where goods_id ".db_create_in($val['rand_ids']);
    		 $all = $GLOBALS['db']->getAll($goods_sql);
    		 foreach($all as $k=>$v)
    		 {
    			 $goods[$v['goods_id']]['goods_name'] = $v['goods_name'];
    			 $goods[$v['goods_id']]['goods_thumb'] = $v['goods_thumb'];
    			 $goods[$v['goods_id']]['goods_img'] = $v['goods_img'];
    			 $goods[$v['goods_id']]['shop_price'] = $v['shop_price'];
    			 $goods[$v['goods_id']]['collect_link'] = $v['collect_link'];
    		 }
    		
    		 $row[$key]['goods'] = $goods;
    	}
    }
    
    
    return array('brand' => $row, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
}

function get_intro_list()
{
    return array(
        'is_best'    => $GLOBALS['_LANG']['is_best'],
        'not_best'     => $GLOBALS['_LANG']['not_best']
    );
}

function get_street_type(){
    $sql = "select cat_id,cat_name from ".$GLOBALS['ecs']->table('brands_category')." where is_show = 1";
    $info = $GLOBALS['db']->getAll($sql);
    $ret = array();
    foreach($info as $k=>$v){
        $ret[$v['cat_id']] = $v['cat_name'];
    }
    return $ret;
}

/**
 * 修改商品某字段值
 * @param   string  $brand_id   商品编号，可以为多个，用 ',' 隔开
 * @param   string  $field      字段名
 * @param   string  $value      字段值
 * @return  bool
 */
function update_brand($brand_id, $field, $value)
{
    if ($brand_id)
    {
        /* 清除缓存 */
        clear_cache_files();

        $sql = "UPDATE " . $GLOBALS['ecs']->table('brand') .
                " SET $field = $value " .
                "WHERE brand_id " . db_create_in($brand_id);
        return $GLOBALS['db']->query($sql);
    }
    else
    {
        return false;
    }
}

/**
 * 从回收站删除多个商品
 * @param   mix     $brand_id   商品id列表：可以逗号格开，也可以是数组
 * @return  void
 */
function delete_brand($brand_id)
{
    if (empty($brand_id))
    {
        return;
    }

    check_authz_json('brand_manage');

    $sql = "SELECT DISTINCT brand_id FROM " .$ecs->table('brand'). " WHERE brand_id ". db_create_in($brand_id) . " AND is_delete = 1";;
    $brand_id = $GLOBALS['db']->getCol($sql);
    if (empty($brand_id))
    {
        return;
    }
    
    /* 删除该品牌的图标 */
    $sql = "SELECT brand_id,brand_logo FROM " .$ecs->table('brand'). " WHERE brand_id ". db_create_in($brand_id) . " AND is_delete = 1";;
    $res = $GLOBALS['db']->query($sql);
    while ($brand= $GLOBALS['db']->fetchRow($res))
    {
        /* 更新商品的品牌编号 */
        $sql = "UPDATE " .$ecs->table('brand'). " SET brand_id=0 WHERE brand_id='".$brand['brand_id']."'";
        
        if (!$GLOBALS['db']->query($sql, 'SILENT') && $GLOBALS['db']->errno() != 1146)
        {
            die($GLOBALS['db']->error());
        }
        
        if (!empty($brand['brand_logo']))
        {
            @unlink(ROOT_PATH . DATA_DIR . '/brandlogo/' .$brand['brand_logo']);
        }
    }

    $sql = "DELETE FROM " . $GLOBALS['ecs']->table('brand') .
            " WHERE brand_id " . db_create_in($brand_id);
    $GLOBALS['db']->query($sql);

    /* 清除缓存 */
    clear_cache_files();
    exit;
}
?>
