<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<html>
 <head>
  <title> 旅游比价决策系统后台管理</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
  <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
 </head>
 <body>

  <div class="header">
    
      <div class="dl-title">
        <a href="#" title="文档库地址" target="_blank"><!-- 仅仅为了提供文档的快速入口，项目中请删除链接 -->
          <span class="lp-title-port">BUI</span><span class="dl-title-text">前端框架</span>
        </a>
      </div>

    <div class="dl-log">欢迎您，<span class="dl-log-user">**.**@alibaba-inc.com</span><a href="###" title="退出系统" class="dl-log-quit">[退出]</a><a href="#" title="文档库" class="dl-log-quit">文档库</a>
    </div>
  </div>
   <div class="content">
    <div class="dl-main-nav">
      <div class="dl-inform"><div class="dl-inform-title">贴心小秘书<s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
        <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">首页</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-order">集群运行情况</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-inventory">网站信息管理</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-supplier">用户信息管理</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-marketing">流量监控</div></li>
      </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
   </div>
  <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/bui.js"></script>
  <script type="text/javascript" src="./assets/js/config.js"></script>

  <script>
    BUI.use('common/main',function(){
      var config = [{
          id:'menu', 
          homePage : 'code',
          menu:[{
              text:'首页内容',
              items:[
                {id:'code',text:'首页代码',href:'main/code.jsp',closeable : false},
                {id:'main-menu',text:'顶部导航',href:'main/menu.html'},
                {id:'second-menu',text:'右边菜单',href:'main/second-menu.html'},
                {id:'dyna-menu',text:'动态菜单',href:'main/dyna-menu.html'}
              ]
            },{
              text:'页面操作',
              items:[
                {id:'operation',text:'页面常见操作',href:'main/operation.html'},
                {id:'quick',text:'页面操作快捷方式',href:'main/quick.html'}  
              ]
            },{
              text:'文件结构',
              items:[
                {id:'resource',text:'资源文件结构',href:'main/resource.html'},
                {id:'loader',text:'引入JS方式',href:'main/loader.html'}  
              ]
            }]
          },{
            id:'form',
            menu:[{
                text:'表单页面',
                items:[
                  {id:'code',text:'表单代码',href:'form/code.jsp'},
                  {id:'example',text:'表单示例',href:'form/example.jsp'},
                  {id:'introduce',text:'表单简介',href:'form/introduce.jsp'},
                  {id:'valid',text:'表单基本验证',href:'form/basicValid.html'},
                  {id:'advalid',text:'表单复杂验证',href:'form/advalid.html'},
                  {id:'remote',text:'远程调用',href:'form/remote.html'},
                  {id:'group',text:'表单分组',href:'form/group.html'},
                  {id:'depends',text:'表单联动',href:'form/depends.html'}
                ]
              },{
                text:'成功失败页面',
                items:[
                  {id:'success',text:'成功页面',href:'form/success.html'},
                  {id:'fail',text:'失败页面',href:'form/fail.html'}
                
                ]
              },{
                text:'可编辑表格',
                items:[
                  {id:'grid',text:'可编辑表格',href:'form/grid.html'},
                  {id:'form-grid',text:'表单中的可编辑表格',href:'form/form-grid.html'},
                  {id:'dialog-grid',text:'使用弹出框',href:'form/dialog-grid.html'},
                  {id:'form-dialog-grid',text:'表单中使用弹出框',href:'form/form-dialog-grid.html'}
                ]
              }]
          },{
            id:'search',
            menu:[{
                text:'搜索页面',
                items:[
                  {id:'code',text:'最近一次运行',href:'search/code.jsp'},
                  {id:'example',text:'爬取参数设置',href:'search/example.jsp'},
                  {id:'example-dialog',text:'爬取站点信息',href:'search/example-dialog.jsp'}
//                  {id:'introduce',text:'搜索页面简介',href:'search/introduce.jsp'},
//                  {id:'config',text:'搜索配置',href:'search/config.html'}
                ]
              }
//                ,{
//                text : '',
//                items : [
//                  {id : 'tab',text : '使用tab过滤',href : 'search/tab.html'}
//                ]
//              }
            ]
          },{
            id:'detail',
            menu:[{
                text:'详情页面',
                items:[
                  {id:'code',text:'详情页面代码',href:'detail/code.jsp'},
                  {id:'example',text:'详情页面示例',href:'detail/example.jsp'},
                  {id:'introduce',text:'详情页面简介',href:'detail/introduce.jsp'}
                ]
              }]
          },{
            id : 'chart',
            menu : [{
              text : '图表',
              items:[
                  {id:'code',text:'引入代码',href:'chart/code.jsp'},
                  {id:'line',text:'折线图',href:'chart/line.html'},
                  {id:'area',text:'区域图',href:'chart/area.html'},
                  {id:'column',text:'柱状图',href:'chart/column.html'},
                  {id:'pie',text:'饼图',href:'chart/pie.html'}, 
                  {id:'radar',text:'雷达图',href:'chart/radar.html'}
              ]
            }]
          }];
      new PageUtil.MainPage({
        modulesConfig : config
      });
    });
  </script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
