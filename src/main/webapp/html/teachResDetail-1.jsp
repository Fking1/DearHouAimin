<%--
  Created by IntelliJ IDEA.
  User: chm
  Date: 18-12-25
  Time: 下午3:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>教学资源-课程课件</title>
    <meta charset="utf-8">
    <link rel="icon" href="/images/dgut.jpg">
    <link rel="stylesheet" type="text/css" href="../style/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/teachResDetail.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/teachResDetail-1.css">
    <script type="text/javascript" src="../js/normal.js"></script>
    <script type="text/javascript" src="../js/teachRes/teachResDetail-1.js"></script>
</head>
<body onload="Rendering();">
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="top"></div>

<article class="content">

    <section id="banner">
        <img src="../images/index/abouttop_03.jpg">
    </section>
    <section class="mainWrap relative">
        <div class="detailContent">
            <div class="column_1">
                <section class="leftNav">
                    <h3>教学资源</h3>
                    <ul>
                        <li class="current"><a href="teachResDetail-1.html">课程课件</a></li>
                        <li><a href="teachResDetail-2.html">教学录像</a></li>
                        <li><a href="teachResDetail-3.html">习题库</a></li>
                        <li><a href="teachResDetail-4.html">案例库</a></li>
                        <li><a href="teachResDetail-5.html">实验任务</a></li>
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="index.html">首页</a>·
                            <a href="teachResDetail-1.html">教学资源</a>·
                            <a href="teachResDetail-1.html">课程课件</a>
                        </nav>
                        <h1>课程课件</h1>
                    </header>
                    <div id="resource">
                        <form class="search" action="DearHouAimin/web.controller/courseWareServlet?type=searchRes&page=1&pageSize=10" method="post">
                            <input class="searchInput" type="search" name="search">
                            <input class="searchSubmit" type="submit" value="文件搜索">
                        </form>
                        <table class="table" border="0" width="800px" cellpadding="2" cellspacing="1">
                            <tr class="firstRow">
                                <td>序号</td>
                                <td>文件名称</td>
                                <td>文件大小</td>
                                <td>上传时间</td>
                                <td>操作</td>
                            </tr>
                            <c:set var="trType" scope="session" value="${0}"/>
                            <c:forEach items="${requestScope.resources}"  var="resource">
                                <c:choose>
                                    <c:when test="${trType==0}">
                                        <tr class="trOdd">
                                        <c:set var="trType" scope="session" value="${1}"/>
                                    </c:when>
                                    <c:otherwise>
                                        <tr class="tr">
                                        <c:set var="trType" scope="session" value="${0}"/>
                                    </c:otherwise>
                                </c:choose>
                                            <td><c:out value="${resource.id}"/></td>
                                            <td><c:out value="${resource.resName}"/></td>
                                            <td><c:out value="${10000}"/></td>
                                            <td><c:out value="${resource.resTime}"/></td>
                                            <td>
                                                <a onclick="Preview(event)"><img src="../images/teachResource/preview.png"></a>
                                                <a href="../resource/《软件需求分析与设计》课程简介.pptx" download="《软件需求分析与设计》课程简介.pptx">
                                                    <img src="../images/teachResource/download.png">
                                                </a>
                                            </td>

                                        </tr>
                            </c:forEach>
                        </table>
                        <div class="tranPage">
                            <img onmouseover="upPage_hover(event)" onmouseout="upPage_out(event)" src="..\images\teachResource\up.png">
                            <img src="..\images\teachResource\1.png">
                            <img src="..\images\teachResource\2.png">
                            <img src="..\images\teachResource\ellipsis.png">
                            <img onmouseover="downPage_hover(event)" onmouseout="downPage_out(event)" class="downPage" src="..\images\teachResource\down.png">
                        </div>

                    </div>
                </article>
            </div>
        </div>
    </section>
</article>

<!-- 通过js渲染，js代码在normal.js里 -->
<div id="bottom"></div>
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="copyrights"></div>
</body>
</html>