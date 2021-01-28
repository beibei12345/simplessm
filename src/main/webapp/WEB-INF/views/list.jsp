<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <body>
    <table border="1px">
      <tr>
        <th>id</th>
        <th>姓名</th>
        <th>邮箱</th>
        <th>性别编号</th>
        <th>部门id</th>
      </tr>
      <c:forEach items="${emps}" var="emp">
        <tr>
          <td>${emp.id}</td>
          <td>${emp.lastName}</td>
          <td>${emp.email}</td>
          <td>${emp.gender}</td>
          <td>${emp.dId}</td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>