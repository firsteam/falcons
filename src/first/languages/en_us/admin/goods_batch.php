<?php

/**
 * ECSHOP 商品批量上传、修改语言文件
 * ============================================================================
 * 版权所有 2005-2011 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: goods_batch.php 17217 2011-01-19 06:29:08Z liubo $
 */

$_LANG['select_method'] = '选择商品的方式：';
$_LANG['by_cat'] = '根据商品分类、品牌';
$_LANG['by_sn'] = '根据商品货号';
$_LANG['select_cat'] = '选择商品分类：';
$_LANG['select_brand'] = '选择商品品牌：';
$_LANG['goods_list'] = '商品列表：';
$_LANG['src_list'] = '待选列表：';
$_LANG['dest_list'] = '选定列表：';
$_LANG['input_sn'] = '输入商品货号：<br />（每行一个）';
$_LANG['edit_method'] = '编辑方式：';
$_LANG['edit_each'] = '逐个编辑';
$_LANG['edit_all'] = '统一编辑';
$_LANG['go_edit'] = '进入编辑';

$_LANG['notice_edit'] = '会员价格为-1表示会员价格将根据会员等级折扣比例计算';

$_LANG['goods_class'] = '商品类别';
$_LANG['g_class'][G_REAL] = '实体商品';
$_LANG['g_class'][G_CARD] = '虚拟卡';

$_LANG['goods_sn'] = '货号';
$_LANG['goods_name'] = '商品名称';
$_LANG['market_price'] = '市场价格';
$_LANG['shop_price'] = '本店价格';
$_LANG['integral'] = '积分购买';
$_LANG['give_integral'] = '赠送积分';
$_LANG['goods_number'] = '库存';
$_LANG['brand'] = '品牌';

$_LANG['batch_edit_ok'] = '批量修改成功';

$_LANG['export_format'] = '数据格式';
$_LANG['export_ecshop'] = 'ecshop支持数据格式';
$_LANG['export_taobao'] = '淘宝助理支持数据格式';
$_LANG['export_taobao46'] = '淘宝助理4.6支持数据格式';
$_LANG['export_paipai'] = '拍拍助理支持数据格式';
$_LANG['export_paipai3'] = '拍拍助理3.0支持数据格式';
$_LANG['goods_cat'] = '所属分类：';
$_LANG['csv_file'] = '上传批量csv文件：';
$_LANG['notice_file'] = '（CSV文件中一次上传商品数量最好不要超过1000，CSV文件大小最好不要超过500K.）';
$_LANG['file_charset'] = '文件编码：';
$_LANG['download_file'] = '下载批量CSV文件（%s）';
$_LANG['use_help'] = '使用说明：' .
        '<ol>' .
          '<li>根据使用习惯，下载相应语言的csv文件，例如中国内地用户下载简体中文语言的文件，港台用户下载繁体语言的文件；</li>' .
          '<li>填写csv文件，可以使用excel或文本编辑器打开csv文件；<br />' .
              '碰到“是否精品”之类，填写数字0或者1，0代表“否”，1代表“是”；<br />' .
              '商品图片和商品缩略图请填写带路径的图片文件名，其中路径是相对于 [根目录]/images/ 的路径，例如图片路径为[根目录]/images/200610/abc.jpg，只要填写 200610/abc.jpg 即可；<br />' .
               '<font style="color:#FE596A;">如果是淘宝助理格式请确保cvs编码为在网站的编码，如编码不正确，可以用编辑软件转换编码。</font></li>' .
          '<li>将填写的商品图片和商品缩略图上传到相应目录，例如：[根目录]/images/200610/；<br />'.
              '<font style="color:#FE596A;">请首先上传商品图片和商品缩略图再上传csv文件，否则图片无法处理。</font></li>' .
          '<li>选择所上传商品的分类以及文件编码，上传csv文件</li>' .
        '</ol>';

$_LANG['js_languages']['please_select_goods'] = '请您选择商品';
$_LANG['js_languages']['please_input_sn'] = '请您输入商品货号';
$_LANG['js_languages']['goods_cat_not_leaf'] = '请选择底级分类';
$_LANG['js_languages']['please_select_cat'] = '请您选择所属分类';
$_LANG['js_languages']['please_upload_file'] = '请您上传批量csv文件';

// 批量上传商品的字段
$_LANG['upload_goods']['upload_goods_id'] = 'upload_goods_id';
$_LANG['upload_goods']['goods_sn'] = 'goods_sn';
$_LANG['upload_goods']['review_num'] = 'review_num';
$_LANG['upload_goods']['favorite_num'] = 'favorite_num';
$_LANG['upload_goods']['is_wish'] = 'is_wish';
$_LANG['upload_goods']['goods_weight'] = 'goods_weight';
$_LANG['upload_goods']['shop_price'] = 'shop_price';
$_LANG['upload_goods']['goods_name'] = 'goods_name';
$_LANG['upload_goods']['collect_link'] = 'collect_link';
$_LANG['upload_goods']['goods_brief'] = 'goods_brief';
$_LANG['upload_goods']['goods_thumb'] = 'goods_thumb';
$_LANG['upload_goods']['goods_img'] = 'goods_img';
$_LANG['upload_goods']['original_img'] = 'original_img';
$_LANG['upload_goods']['goods_type'] = 'goods_type';
$_LANG['upload_goods']['market_price'] = 'market_price';
$_LANG['upload_goods']['goods_name_zh'] = 'goods_name_zh';
$_LANG['upload_goods']['goods_desc'] = 'goods_desc';
$_LANG['upload_goods']['is_on_sale'] = 'is_on_sale';
$_LANG['upload_goods']['goods_number'] = 'goods_number';
$_LANG['upload_goods']['cat_id'] = 'cat_id';
$_LANG['upload_goods']['brand_id'] = 'brand_id';
$_LANG['upload_goods']['keywords'] = 'keywords';
$_LANG['upload_goods']['goods_name_style'] = 'goods_name_style';
$_LANG['upload_goods']['click_count'] = 'click_count';
$_LANG['upload_goods']['provider_name'] = 'provider_name';
$_LANG['upload_goods']['promote_price'] = 'promote_price';
$_LANG['upload_goods']['promote_start_date'] = 'promote_start_date';
$_LANG['upload_goods']['promote_end_date'] = 'promote_end_date';
$_LANG['upload_goods']['is_buy'] = 'is_buy';
$_LANG['upload_goods']['buymax'] = 'buymax';
$_LANG['upload_goods']['buymax_start_date'] = 'buymax_start_date';
$_LANG['upload_goods']['buymax_end_date'] = 'buymax_end_date';
$_LANG['upload_goods']['warn_number'] = 'warn_number';
$_LANG['upload_goods']['is_real'] = 'is_real';
$_LANG['upload_goods']['extension_code'] = 'extension_code';
$_LANG['upload_goods']['is_alone_sale'] = 'is_alone_sale';
$_LANG['upload_goods']['is_shipping'] = 'is_shipping';
$_LANG['upload_goods']['integral'] = 'integral';
$_LANG['upload_goods']['add_time'] = 'add_time';
$_LANG['upload_goods']['sort_order'] = 'sort_order';
$_LANG['upload_goods']['is_delete'] = 'is_delete';
$_LANG['upload_goods']['is_best'] = 'is_best';
$_LANG['upload_goods']['is_new'] = 'is_new';
$_LANG['upload_goods']['is_hot'] = 'is_hot';
$_LANG['upload_goods']['is_promote'] = 'is_promote';
$_LANG['upload_goods']['zhekou'] = 'zhekou';
$_LANG['upload_goods']['bonus_type_id'] = 'bonus_type_id';
$_LANG['upload_goods']['last_update'] = 'last_update';
$_LANG['upload_goods']['seller_note'] = 'seller_note';
$_LANG['upload_goods']['give_integral'] = 'give_integral';
$_LANG['upload_goods']['rank_integral'] = 'rank_integral';
$_LANG['upload_goods']['suppliers_id'] = 'suppliers_id';
$_LANG['upload_goods']['supplier_id'] = 'supplier_id';
$_LANG['upload_goods']['supplier_status'] = 'supplier_status';
$_LANG['upload_goods']['supplier_status_txt'] = 'supplier_status_txt';
$_LANG['upload_goods']['is_check'] = 'is_check';
$_LANG['upload_goods']['is_catindex'] = 'is_catindex';
$_LANG['upload_goods']['cost_price'] = 'cost_price';
$_LANG['upload_goods']['valid_date'] = 'valid_date';
$_LANG['upload_goods']['is_virtual'] = 'is_virtual';
$_LANG['upload_goods']['product_url'] = 'product_url';

$_LANG['upload_goods_attr']['goods_attr_id'] = 'goods_attr_id';
$_LANG['upload_goods_attr']['upload_goods_id'] = 'upload_goods_id';
$_LANG['upload_goods_attr']['goods_sn'] = 'goods_sn';
$_LANG['upload_goods_attr']['attr_value'] = 'attr_value';
$_LANG['upload_goods_attr']['attr_id'] = 'attr_id';
$_LANG['upload_goods_attr']['attr_price'] = 'attr_price';




$_LANG['upload_goods_gallery']['img_id'] = 'img_id';
$_LANG['upload_goods_gallery']['upload_goods_id'] = 'upload_goods_id';
$_LANG['upload_goods_gallery']['goods_sn'] = 'goods_sn';
$_LANG['upload_goods_gallery']['img_url'] = 'img_url';
$_LANG['upload_goods_gallery']['img_desc'] = 'img_desc';
$_LANG['upload_goods_gallery']['thumb_url'] = 'thumb_url';
$_LANG['upload_goods_gallery']['img_original'] = 'img_original';
$_LANG['upload_goods_gallery']['goods_attr_id'] = 'goods_attr_id';
$_LANG['upload_goods_gallery']['is_attr_image'] = 'is_attr_image';
$_LANG['upload_goods_gallery']['img_sort'] = 'img_sort';



$_LANG['batch_upload_ok'] = '批量上传成功';
$_LANG['goods_upload_confirm'] = '批量上传确认';
?>