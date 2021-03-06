<%@ page import="cn.edu.zust.se.order.vo.UserVo" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/5/30
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="/css/design.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>管理员页面</title>
</head>
<body link="#00ffff" alink="gray" vlink="black">
<h1>admin home</h1>
<h2 align="center">欢迎进入佳运商品系统!</h2>

<div><%
    UserVo user= (UserVo) request.getSession().getAttribute("user");
%>
</div>
<p align="center">欢迎管理员<%=user.getLoginName()%>来到管理员首页！</p>
<div >
    <table  width="80%" border="1" align="center" cellpadding="8" cellspacing="0">
        <caption><%=user.getLoginName()%>管理员信息</caption>
        <tr>
            <th rowspan="2" align="center"><img src="/img/头像3.jpeg" width="300" height="300"></img></th>
            <th>姓名</th>
            <td align="center"><%=user.getLoginName()%></td>
            <th>id</th>
            <td align="center"><%=user.getId()%></td>
        </tr>
        <tr>
            <th>mobile</th>
            <td align="center"><%=user.getMobile()%></td>
            <th>email</th>
            <td align="center"><%=user.getEmail()%>></td>
        </tr>
        <tr>
            <th colspan="5">兴趣爱好</th>
        </tr>
        <tr>
            <td align="center">做饭</td>
            <td align="center">看动漫</td>
            <td  align="center">看科幻电影</td>
            <td align="center">打羽毛球</td>
            <td align="center">跳舞</td>
        </tr>
        <tr>
            <th colspan="5">管理</th>
        </tr>
<tr>
    <td>
        <form action="/admin/add_user" method="post">
            id <input type="text" name="id"><br>
            login_name <input type="text" name="login_name"><br>
            password <input type="text" name="password"><br>
            name <input type="text" name="name"><br>
            mobile <input type="text" name="mobile"><br>
            email <input type="text" name="email"><br>
            type <input type="text" name="type"><br>
            <input type="submit" name="submit" value="点击添加用户"><br>
        </form>
    </td>
    <td>
        <form action="/admin/delete" method="post">
            id <input type="text" name="id"><br>
            <input type="submit" name="submit" value="点击删除该用户"><br>
        </form>
    </td>
    <td>
        <form action="/admin/update" method="post">
            id <input type="text" name="id"><br>
            login_name <input type="text" name="login_name"><br>
            password <input type="text" name="password"><br>
            name <input type="text" name="name"><br>
            mobile <input type="text" name="mobile"><br>
            email <input type="text" name="email"><br>
            type <input type="text" name="type"><br>
            <input type="submit" name="submit" value="点击修改用户信息"><br>
        </form>
    </td>
</tr>
        <tr>
            <td colspan="5" align="center"><a href="/admin/admin_goods">点击进入商品管理页面</a><br></td>
        </tr>
        <tr>
            <td colspan="5" align="center">    <a href="/admin/admin_item">点击进入订单管理页面</a><br></td>
        </tr>
    </table>
</div>
<a href="/admin/show">点击查看用户清单</a><br>
增加用户：
<form action="/admin/add_user" method="post">
    id <input type="text" name="id"><br>
    login_name <input type="text" name="login_name"><br>
    password <input type="text" name="password"><br>
    name <input type="text" name="name"><br>
    mobile <input type="text" name="mobile"><br>
    email <input type="text" name="email"><br>
    type <input type="text" name="type"><br>
    <input type="submit" name="submit" value="点击添加用户"><br>
</form>
删除用户：
<form action="/admin/delete" method="post">
id <input type="text" name="id"><br>
    <input type="submit" name="submit" value="点击删除该用户"><br>
</form>
修改用户信息：
<form action="/admin/update" method="post">
    id <input type="text" name="id"><br>
    login_name <input type="text" name="login_name"><br>
    password <input type="text" name="password"><br>
    name <input type="text" name="name"><br>
    mobile <input type="text" name="mobile"><br>
    email <input type="text" name="email"><br>
    type <input type="text" name="type"><br>
    <input type="submit" name="submit" value="点击修改用户信息"><br>
</form>
</body>
</html>
