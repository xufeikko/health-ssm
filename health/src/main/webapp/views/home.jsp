<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/9/27
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js"></script>
</head>
<style>
    input{
        height:30px;
        line-height: 30px;
        padding:0 5px;
    }
    .itemList{
        width: 280px;
        height:33px;
        float: left;
    }
    .itemSpan{
        height:30px;
        line-height: 30px;
    }
    .btn{
        width:60px;
        height:32px;
        line-height: 21px;
        padding:5px 5px;
        background: #409EFF;
        color:#fff;
        border-color: #409EFF;
    }
    .btn:hover{
        cursor: pointer;
        background: #409EFF;
        border-color: #409EFF;
        opacity: 0.6;
    }
    .clearfix {
        overflow: auto;
    }
    .context{
        margin-top:20px;
    }
    .color_74{
        color: #747474;
    }

</style>
<body>

<div class="clearfix">
    <div class="itemList">
        <span class="itemSpan">项目名称：</span>
        <input type="text" class="color_74 name" placeholder="请输入项目名称" value="">
    </div>
    <div class="itemList">
        <span class="itemSpan">患者姓名：</span>
        <input type="text" class="color_74 patientName" placeholder="请输入姓名" value="">
    </div>
    <div class="itemList">
        <span class="itemSpan">检查时间：</span>
        <input type="text" class="color_74 roughHappentime" placeholder="请输入时间" value="">
    </div>
    <div class="itemList">
        <button class="btn search">查询</button>
    </div>
</div>


<div class="context clearfix">
    <div class="itemList">
        <span class="itemSpan">项目名称：</span>
        <span class="itemSpan color_74">肌酐</span>
    </div>
    <div class="itemList">
        <span class="itemSpan">患者姓名：</span>
        <span class="itemSpan color_74">张三</span>
    </div>
    <div class="itemList">
        <span class="itemSpan">相对发生时间：</span>
        <span class="itemSpan color_74">2018-11-20</span>
    </div>
    <div class="itemList">
        <span class="itemSpan">绝对发生时间：</span>
        <span class="itemSpan color_74">2018-11-20</span>
    </div>
    <div class="itemList">
        <span class="itemSpan">结果值：</span>
        <span class="itemSpan color_74">测试</span>
    </div>
    <div class="itemList">
        <span class="itemSpan">规格单位：</span>
        <span class="itemSpan color_74">测试</span>
    </div>
    <div class="itemList">
        <span class="itemSpan">实验室检查套：</span>
        <span class="itemSpan color_74">测试</span>
    </div>
    <div class="itemList">
        <span class="itemSpan">记录时间：</span>
        <span class="itemSpan color_74">测试</span>
    </div>
</div>
</body>
<script src="../static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    $(".search").click(function(){
        var projectName = $(".name").val();
        var patientName = $(".patientName").val();
        var roughHappentime = $(".roughHappentime").val();
        $.ajax({
            type: "post",
            url: "/rest/labexam/items/queryObjByCondition",
            data: {name:projectName, patientName:patientName,roughHappentime:roughHappentime},
            dataType: "json",
            success:function(data){
                console.log(data);
                $(".context").append(("<div>").addClass("itemList")
                    .append("<span>").addClass("itemSpan").text()
                    .append("<input>").attr({"type":"text"})
                )
            },
            error:function(data){
                console.log(data);
            }
        })
    })
    function queryObjByCondition(){
        alert(111)
    }

</script>
