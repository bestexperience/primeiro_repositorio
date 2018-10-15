<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./css/style.css">
</head>
<body>

<c:import url="MenuUsuario.jsp"/>
  
<div id="main" class="container">
<img src="img/usuario.png" class="rounded" alt="Cinque Terre" width="304" height="300">
  <h3>Basic Navbar Example</h3>
  <p>${usuario.nome}</p>
  <p>${usuario.email}</p>
  <p>${usuario.login}</p>
  <p>${usuario.id}</p>
  
</div>

<script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
            document.getElementById("navstyle").style.paddingLeft = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
            document.getElementById("navstyle").style.paddingLeft = "0";
        }
    </script>
</body>
</html>