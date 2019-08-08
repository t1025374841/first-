<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tao
  Date: 2019/8/6
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function back() {
            location.href='/user/category/find';
        }
    </script>
</head>
<body>

<h1>修改类别</h1>


<form action="" method="post">
    <input type="hidden" name="id" value="${category.id}"><br/>
    名称<input type="text" name="name" value="${category.name}"><br/>
    <%--父类id<input type="text" name="parentId" value="${category.parentId}"><br/>--%>
    所属类别<select name="parentId">
                <option value="0">无</option>
                <c:forEach items="${allcategory}" var="parentcategory">
                    <c:if test="${parentcategory.id==category.parentId}">
                        <option value="${parentcategory.id}" selected="selected">${parentcategory.name}</option>
                    </c:if>
                    <c:if test="${parentcategory.id!=category.parentId}">
                        <option value="${parentcategory.id}">${parentcategory.name}</option>
                    </c:if>
                </c:forEach>
            </select><br/>
    类别状态<input type="text" name="status" value="${category.status}"><br/>
    <input type="submit" value="修改">
    <input type="button" value="返回" onclick="back()"/>

</form>


</body>
</html>
