<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/form-style.css">
        
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
</head>
<body>
	<c:import url="MenuUsuario.jsp"/>
	
	<div class="container">
		<form id="regForm" action="" method="">
		  <h1>Criar Campeonato</h1>
		  <!-- One "tab" for each step in the form: -->
		  <div class="tab">Nome do Campeonato
		  	<p><input placeholder="Last name..."  readonly oninput="this.className = ''" name="lname" value="${usuario.id}" ></p>
		    <p><input placeholder="Nome..." oninput="this.className = ''" name="fname"></p>
		  </div>
		  <div class="tab">Configurando os pontos:<br /><br/>
		  	<c:forEach var="status" items="${status}">
		  	 <label for="nome" value="${status.id}">${status.nome}</label>
		  	<p><input placeholder="..." oninput="this.className = ''" name="pontos${status.id}"></p>
		    <!--  <p><input placeholder="E-mail..." oninput="this.className = ''" name="email"></p>
		    <p><input placeholder="Phone..." oninput="this.className = ''" name="phone"></p>-->
		    </c:forEach>
		  </div>
		  
		  <div class="tab">Birthday:
		    <p><input placeholder="dd" oninput="this.className = ''" name="dd"></p>
		    <p><input placeholder="mm" oninput="this.className = ''" name="nn"></p>
		    <p><input placeholder="yyyy" oninput="this.className = ''" name="yyyy"></p>
		  </div>
		  
		  <div class="tab">Login Info:
		    <p><input placeholder="Username..." oninput="this.className = ''" name="uname"></p>
		    <p><input placeholder="Password..." oninput="this.className = ''" name="pword" type="password"></p>
		  </div>
		  <div style="overflow:auto;">
		    <div style="float:right;">
		      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
		      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
		    </div>
		  </div>
		  <!-- Circles which indicates the steps of the form: -->
		  <div style="text-align:center;margin-top:40px;">
		    <span class="step"></span>
		    <span class="step"></span>
		    <span class="step"></span>
		    <span class="step"></span>
		  </div>
		</form>
    </div>
    
    <script language="JavaScript" src="js/form-js.js">
	</script>
    
</body>
</html>