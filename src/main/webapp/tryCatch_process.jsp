<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<%
  try {
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    int a = Integer.parseInt(num1);
    int b = Integer.parseInt(num2);
    int c = a / b;
    out.print(num1 + " / " + num2 + " = " + c);
  }
  catch(Exception e) {
//    RequestDispatcher : 클라이언트에서 최초로 들어온 요청을 jsp/Servlet 내에서 원하는 곳으로 요청을 넘기고 처리 결과를 받아오는 클래스
//    이동할 페이지를 설정
    RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp");
//    설정된 페이지로 이동
    dispatcher.forward(request, response);
  }
%>
</body>
</html>






