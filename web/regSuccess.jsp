<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2017/9/25
  Time: 0:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="register.success.title"/></title>
</head>
<body>
<div align="center">
    <s:set name="user" value="loginUser" scope="session"/>
    <s:if test="%{getText('i18n.lang')=='en_US'
        ||#session.WW_TRANS_I18N_LOCALE.toString()=='en_US'}">
        <s:if test="loginUser.sex==1">
            <s:text name="register.gender.gentleman"/>
        </s:if>
        <s:else>
            <s:text name="register.gender.lady"/>
        </s:else>
    </s:if>

    <s:property value="loginUser.account"/>

    <s:if test="%{getText('i18n.lang')=='zh_CN'
        ||#session.WW_TRANS_I18N_LOCALE.toString()=='zh_CN'}">
        <s:if test="loginUser.sex==1">
            <s:text name="register.gender.gentleman"/>
        </s:if>
        <s:else>
            <s:text name="register.gender.lady"/>
        </s:else>
    </s:if>

    <s:text name="register.success"/><br>
    <a href="login.jsp"><s:text name="login.back"/></a>
</div>
</body>
</html>
