
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link href="./static/css/bootstrap.min.css" rel="stylesheet">
<body>
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">用户名</label>
                    <div class="col-lg-4">
                        <input type="text" class="form-control " id="name" placeholder="请输入用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">密码</label>
                    <div class="col-lg-4">
                        <input type="password" class="form-control" id="password" placeholder="请输入密码">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script src="./static/js/bootstrap.min.js"></script>
<script>
</script>

