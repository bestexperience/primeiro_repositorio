<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- - 
<div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      <a href="#">Perfil</a>
      <a href="#" class="valor">Novo Campeonato</a>
      <a href="#">Campeonatos</a>
      <a href="#">Inserir Resultados</a>
    </div>
    -->
    <nav id ="navstyle" class="navbar navbar-inverse"> <!--Cor do menu será preta-->
          <div class="container-fluid">
            <div class="navbar-header">
            	<span class="span-no-display">${usuario.id}</span>
            <!--
                <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
              	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>
             -->
            </div> 
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
                <li><a href="#">Perfil</a></li>
                <li><a href="manterdados.do?acao=carregarStatus">Novo Campeonato</a></li>
                <li><a href="#">Campeonatos</a></li>
                <li><a href="#">Inserir Resultados</a></li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manutenção<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Jogadores</a></li>
                    <li><a href="#">Times</a></li>
                    <li><a href="#">Juizes</a></li>
                    <li><a href="#">Estadios</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
	</nav>  
    