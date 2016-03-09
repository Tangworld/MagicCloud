<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>

<html>
<<<<<<< HEAD
<head>
    <title>Practical CSS3 tables with rounded corners - demo</title>
    <style>

        body {
            width: 600px;
            margin: 40px auto;
            font-family: 'trebuchet MS', 'Lucida sans', Arial;
            font-size: 14px;
            color: #444;
        }

        table {
            *border-collapse: collapse; /* IE7 and lower */
            border-spacing: 0;
            width: 100%;
        }

        .bordered {
            border: solid #ccc 1px;
            -moz-border-radius: 6px;
            -webkit-border-radius: 6px;
            border-radius: 6px;
            -webkit-box-shadow: 0 1px 1px #ccc;
            -moz-box-shadow: 0 1px 1px #ccc;
            box-shadow: 0 1px 1px #ccc;
        }

        .bordered tr:hover {
            background: #fbf8e9;
            -o-transition: all 0.1s ease-in-out;
            -webkit-transition: all 0.1s ease-in-out;
            -moz-transition: all 0.1s ease-in-out;
            -ms-transition: all 0.1s ease-in-out;
            transition: all 0.1s ease-in-out;
        }

        .bordered td, .bordered th {
            border-left: 1px solid #ccc;
            border-top: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .bordered th {
            background-color: #dce9f9;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
            background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
            background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
            background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
            background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
            background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
            -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
            -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;
            box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
            border-top: none;
            text-shadow: 0 1px 0 rgba(255,255,255,.5);
        }

        .bordered td:first-child, .bordered th:first-child {
            border-left: none;
        }

        .bordered th:first-child {
            -moz-border-radius: 6px 0 0 0;
            -webkit-border-radius: 6px 0 0 0;
            border-radius: 6px 0 0 0;
        }

        .bordered th:last-child {
            -moz-border-radius: 0 6px 0 0;
            -webkit-border-radius: 0 6px 0 0;
            border-radius: 0 6px 0 0;
        }

        .bordered th:only-child{
            -moz-border-radius: 6px 6px 0 0;
            -webkit-border-radius: 6px 6px 0 0;
            border-radius: 6px 6px 0 0;
        }

        .bordered tr:last-child td:first-child {
            -moz-border-radius: 0 0 0 6px;
            -webkit-border-radius: 0 0 0 6px;
            border-radius: 0 0 0 6px;
        }

        .bordered tr:last-child td:last-child {
            -moz-border-radius: 0 0 6px 0;
            -webkit-border-radius: 0 0 6px 0;
            border-radius: 0 0 6px 0;
        }



        /*----------------------*/

        .zebra td, .zebra th {
            padding: 10px;
            border-bottom: 1px solid #f2f2f2;
        }

        .zebra tbody tr:nth-child(even) {
            background: #f5f5f5;
            -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
            -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;
            box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
        }

        .zebra th {
            text-align: left;
            text-shadow: 0 1px 0 rgba(255,255,255,.5);
            border-bottom: 1px solid #ccc;
            background-color: #eee;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
            background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
            background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
            background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
            background-image:      -o-linear-gradient(top, #f5f5f5, #eee);
            background-image:         linear-gradient(top, #f5f5f5, #eee);
        }

        .zebra th:first-child {
            -moz-border-radius: 6px 0 0 0;
            -webkit-border-radius: 6px 0 0 0;
            border-radius: 6px 0 0 0;
        }

        .zebra th:last-child {
            -moz-border-radius: 0 6px 0 0;
            -webkit-border-radius: 0 6px 0 0;
            border-radius: 0 6px 0 0;
        }

        .zebra th:only-child{
            -moz-border-radius: 6px 6px 0 0;
            -webkit-border-radius: 6px 6px 0 0;
            border-radius: 6px 6px 0 0;
        }

        .zebra tfoot td {
            border-bottom: 0;
            border-top: 1px solid #fff;
            background-color: #f1f1f1;
        }

        .zebra tfoot td:first-child {
            -moz-border-radius: 0 0 0 6px;
            -webkit-border-radius: 0 0 0 6px;
            border-radius: 0 0 0 6px;
        }

        .zebra tfoot td:last-child {
            -moz-border-radius: 0 0 6px 0;
            -webkit-border-radius: 0 0 6px 0;
            border-radius: 0 0 6px 0;
        }

        .zebra tfoot td:only-child{
            -moz-border-radius: 0 0 6px 6px;
            -webkit-border-radius: 0 0 6px 6px
        border-radius: 0 0 6px 6px
        }

    </style>
</head>
<body>

<h2>网站信息</h2>
<form id="admin" name="admin" action="${pageContext.request.contextPath}/admin/redisadminaction" class="action.RedisAdminAction" method="post">
    <input id="submit" name="submit" type="submit" value="更新">
</form>
<a href="${pageContext.request.contextPath}/moban216/search/add.jsp">添加</a>
<table class="bordered">
    <thead>

    <tr>
        <th>网站名称</th>
        <th>网址</th>
        <th>操作</th>
    </tr>
    </thead>
    <s:iterator value="list" status="st">
        <tr>
            <td><s:property value="name"/></td>

            <td><s:property value="url"/></td>
            <td><form id="admindel" name="del" action="${pageContext.request.contextPath}/del/redisadmindelaction" class="action.RedisAdminDelAction" method="post">
                <input id="name" name="name" type="hidden" value="<s:property value="name"/>">
                <input id="url" name="url" type="hidden" value="<s:property value="url"/>">
                <input id="del" name="submit" type="submit" value="删除">
            </form></td>
        </tr>

    </s:iterator>


</table>



</body>
</html>











<%--<table width="650" height="296" border="1">--%>
<%--<tr>--%>
<%--<td colspan="4"><strong>网站信息</strong></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>名称</td>--%>
<%--<td>网址</td>--%>
<%--</tr>--%>
<%--<s:iterator value="list" status="st">--%>
<%--<tr>--%>
<%--<td><s:property value="name"/></td>--%>

<%--<td><s:property value="url"/></td>--%>
<%--</tr>--%>

<%--</s:iterator>--%>
<%--</table>--%>
=======
 <head>
  <title> 搜索表单</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link href="../assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/page-min.css" rel="stylesheet" type="text/css" />   <!-- 下面的样式，仅是为了显示代码，而不应该在项目中使用-->
   <link href="../assets/css/prettify.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
    code {
      padding: 0px 4px;
      color: #d14;
      background-color: #f7f7f9;
      border: 1px solid #e1e1e8;
    }
   </style>
 </head>
 <body>
  
  <div class="container">
    <!--<div class="row">-->
      <!--<form id="searchForm" class="form-horizontal span24">-->
        <!--<div class="row">-->
          <!--<div class="control-group span8">-->
            <!--&lt;!&ndash;<label class="control-label">学生编号：</label>&ndash;&gt;-->
            <!--<div class="controls">-->
              <!--&lt;!&ndash;<input type="text" class="control-text" name="id">&ndash;&gt;-->
            <!--</div>-->
          <!--</div>-->
          <!--<div class="control-group span8">-->
            <!--&lt;!&ndash;<label class="control-label">学生姓名：</label>&ndash;&gt;-->
            <!--<div class="controls">-->
              <!--&lt;!&ndash;<input type="text" class="control-text" name="stuName">&ndash;&gt;-->
            <!--</div>-->
          <!--</div>-->
          <!--<div class="control-group span8">-->
            <!--&lt;!&ndash;<label class="control-label">性别：</label>&ndash;&gt;-->
            <!--<div class="controls" >-->
              <!--&lt;!&ndash;<select name="" id="" name="sex">&ndash;&gt;-->
                <!--&lt;!&ndash;<option value="">男</option>&ndash;&gt;-->
                <!--&lt;!&ndash;<option value="">女</option>&ndash;&gt;-->
              <!--&lt;!&ndash;</select>&ndash;&gt;-->
            <!--</div>-->
          <!--</div>-->
        <!--</div>-->
        <!--<div class="row">-->
          <!--<div class="control-group span9">-->
            <!--&lt;!&ndash;<label class="control-label">入学时间：</label>&ndash;&gt;-->
            <!--<div class="controls">-->
              <!--&lt;!&ndash;<input type="text" class=" calendar" name="startDate"><span> - </span><input name="endDate" type="text" class=" calendar">&ndash;&gt;-->
            <!--</div>-->
          <!--</div>-->
          <!--<div class="span3 offset2">-->
            <!--&lt;!&ndash;<button  type="button" id="btnSearch" class="button button-primary">搜索</button>&ndash;&gt;-->
          <!--</div>-->
        <!--</div>-->
      <!--</form>-->
    <!--</div>-->
    <div class="search-grid-container">
      <div id="grid"></div>
    </div>

  </div>
  <div id="content" class="hide">
      <form id="J_Form" class="form-horizontal" action="../data/edit.php?a=1">
        <input type="hidden" name="a" value="3">
        <div class="row">
          <div class="control-group span8">
            <label class="control-label"><s>*</s>网站名称</label>
            <div class="controls">
              <input name="name" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
          <!--<div class="control-group span8">-->
            <!--<label class="control-label"><s>*</s>所属地：</label>-->
            <!--<div class="controls">-->
              <!--<select  data-rules="{required:true}"  name="sex" class="input-normal"> -->
                <!--<option value="">请选择</option>-->
                <!--<option value="1">国外</option>-->
                <!--<option value="0">国内</option>-->
              <!--</select>-->
            <!--</div>-->
          <!--</div>-->
        </div>
        <div class="row">
          <!--<div class="control-group span8">-->
            <!--<label class="control-label"><s>*</s>网站当年排名</label>-->
            <!--<div class="controls">-->
              <!--<input name="grad" type="grade" data-rules="{required:true}" class="input-normal control-text">-->
            <!--</div>-->
          </div>
          <div class="control-group span8">
            <label class="control-label"><s>*</s>网址</label>
            <div class="controls">
              <input name="birthday" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
          
        <!--</div>-->
        <div class="row">
          <!--<div class="control-group span15">-->
            <!--<label class="control-label">网站简介</label>-->
            <!--<div class="controls control-row4">-->
              <!--<textarea name="address" class="input-large" type="text"></textarea>-->
            <!--</div>-->
          <!--</div>-->
        </div>
      </form>
    </div>
  <script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="../assets/js/bui-min.js"></script>
  <script type="text/javascript" src="../assets/js/config-min.js"></script>
  <script type="text/javascript">
    BUI.use('common/page');
  </script>
  <!-- 仅仅为了显示代码使用，不要在项目中引入使用-->
  <script type="text/javascript" src="../assets/js/prettify.js"></script>
  <script type="text/javascript">
    $(function () {
      prettyPrint();
    });
  </script> 
<script type="text/javascript">
  BUI.use('common/search',function (Search) {
    
    var enumObj = {"1":"国外","0":"国内"},
      editing = new BUI.Grid.Plugins.DialogEditing({
        contentId : 'content', //设置隐藏的Dialog内容
        autoSave : true, //添加数据或者修改数据时，自动保存
        triggerCls : 'btn-edit'
      }),
      columns = [
//          {title:'ID',dataIndex:'id',width:200,renderer:function(v){
//            return Search.createLink({
//              id : 'detail' + v,
//              title : '学生信息',
//              text : v,
//              href : 'detail/example.html'
//            });
//          }},
          {title:'网站名称',dataIndex:'name',width:200},
          {title:'网址',dataIndex:'birthday',width:400,renderer:BUI.Grid.Format.dateRenderer},
//          {title:'所属地',dataIndex:'sex',width:60,renderer:BUI.Grid.Format.enumRenderer(enumObj)},
//          {title:'网站当年排名',dataIndex:'grade',width:100},
//          {title:'网站简介',dataIndex:'address',width:300},
          {title:'操作',dataIndex:'',width:100,renderer : function(value,obj){
            var editStr =  Search.createLink({ //链接使用此方式
                id : 'edit' + obj.id,
                title : '编辑学生信息',
                text : '',
                href : 'form/example.html'
              }),
              editStr1 = '<span class="grid-command btn-edit" title="编辑学生信息">编辑</span>',
              delStr = '';//页面操作不需要使用Search.createLink
            return editStr +  editStr1 + delStr;
          }}
        ],
      store = Search.createStore('../data/student.json',{
        proxy : {
          save : { //也可以是一个字符串，那么增删改，都会往那么路径提交数据，同时附加参数saveType
            addUrl : '../data/add.json',
            updateUrl : '../data/edit.json',
            removeUrl : '../data/del.php'
          }/*,
          method : 'POST'*/
        },
        autoSync : true //保存数据后，自动更新
      }),
      gridCfg = Search.createGridCfg(columns,{
        tbar : {
          items : [
            {text : '<i class="icon-plus"></i>新建',btnCls : 'button button-small',handler:addFunction},
//            {text : '<i class="icon-edit"></i>编辑',btnCls : 'button button-small',handler:function(){alert('编辑');}},
            {text : '<i class="icon-remove"></i>删除',btnCls : 'button button-small',handler : delFunction}
          ]
        },
        plugins : [editing,BUI.Grid.Plugins.CheckSelection,BUI.Grid.Plugins.AutoFit] // 插件形式引入多选表格
      });

    var  search = new Search({
        store : store,
        gridCfg : gridCfg
      }),
      grid = search.get('grid');

    function addFunction(){
      var newData = {isNew : true}; //标志是新增加的记录
      editing.add(newData,'name'); //添加记录后，直接编辑
    }

    //删除操作
    function delFunction(){
      var selections = grid.getSelection();
      delItems(selections);
    }

    function delItems(items){
      var ids = [];
      BUI.each(items,function(item){
        ids.push(item.id);
      });

      if(ids.length){
        BUI.Message.Confirm('确认要删除选中的记录么？',function(){
          store.save('remove',{ids : ids});
        },'question');
      }
    }

    //监听事件，删除一条记录
    grid.on('cellclick',function(ev){
      var sender = $(ev.domTarget); //点击的Dom
      if(sender.hasClass('btn-del')){
        var record = ev.record;
        delItems([record]);
      }
    });
  });
</script>





  <form id="admin" name="admin" action="${pageContext.request.contextPath}/admin/redisadminaction" class="action.RedisAdminAction" method="post">
      <input id="submit" name="submit" type="submit" value="提交">
  </form>

  <table width="650" height="296" border="1">
      <tr>
          <td colspan="4"><strong>网站信息</strong></td>
      </tr>
      <tr>
          <td>名称</td>
          <td>网址</td>
      </tr>
      <s:iterator value="list" status="st">
          <tr>
              <td><s:property value="name"/></td>

              <td><s:property value="url"/></td>
          </tr>

      </s:iterator>
  </table>



 </body>
</html>  
>>>>>>> zqh/master
