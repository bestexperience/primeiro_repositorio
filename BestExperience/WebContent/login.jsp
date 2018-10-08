<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
</head>
<body>
	<c:import url="Menu.jsp"/>
  <!--Jogos Master-->
<div class="container">
	<div class="col-md-3">
    <img src="img/screen.jpg" class="img-circle" alt="Cinque Terre" width="304" height="300">
    </div>
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
    <form action="manterfilmes.do" method="post">
      <div class="form-group">
        <div class="input-group">  
            <span class="input-group-addon">
                <i class="glyphicon glyphicon-user"></i>
            </span>
            <input type="number" class="form-control" id="exampleInputEmail1" name="login" placeholder="Numero do Usuario" required>
        </div>
      </div>
      <div class="form-group">
        <div class="input-group">
            <span class="input-group-addon">
                <i class="glyphicon glyphicon-lock"></i>
            </span>
            <input type="password" class="form-control" id="exampleInputPassword1" name="senha" placeholder="Senha" required>
        </div>
      </div>
      <div align="center">
        <button type="submit" class="btn btn-primary btn-lg" name="acao" value="logar">Acessar</button>
      </div>
    </form>
    </div>
</div>  

</body>
</html>