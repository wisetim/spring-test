<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/9/25
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
<head>
    <title><s:text name="register.title"/></title>
    <s:head theme="xhtml"/>
    <sx:head parseContent="true" extraLocales="UTF-8"/>
</head>
<body>
<div align="center">
    <s:i18n name="cn.edu.zjut.local.message">

        <s:form action="register" namespace="/" method="post">
            <s:textfield name="loginUser.account" label="请输入用户名"/>

            <s:password name="loginUser.password" label="请输入密码"/>
            <s:radio list="#{1:getText('register.gender.male'), 0:getText('register.gender.female')}" name="loginUser.sex" label="请选择性别"/>
            <sx:datetimepicker name="loginUser.birthday" displayFormat="yyyy-MM-dd" label="请选择生日"
                               language="UTF-8"/>
            <s:submit align="center" name="register" label="注册"/>
            <s:reset align="center" name="reset" label="重置"/>
        </s:form>
    </s:i18n>
</div>
</body>
</html>
