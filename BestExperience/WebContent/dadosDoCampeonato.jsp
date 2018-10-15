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
</head>
<body>
	<c:import url="Menu.jsp"/>
  <!--Jogos Master-->
<div class="container">
 <div class="card">
        <div class="card-header" id="headingTwo">
          <h5 class="mb-0">
            <button class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#jogosMaster" aria-expanded="false" aria-controls="jogosMaster">
              Jogos Master
            </button>
          </h5>
        </div>
        <div id="jogosMaster" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
          <div class="card-body">
              <div class="table-responsive">
            <table class="table">
            <thead>
              <tr>
                <th>Nº</th>
                <th>Data</th>
                <th>Hora</th>
                <th>Equipe 1</th>
                <th>G1</th>
                <th>G2</th>
                <th>Equipe 2</th>
                <th>Categoria</th>
                <th>Árbitro</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>John</td>
                <td>Doe</td>
                <td>john@example.com</td>
              </tr>
              <tr>
                <td>Mary</td>
                <td>Moe</td>
                <td>mary@example.com</td>
              </tr>
              <tr>
                <td>July</td>
                <td>Dooley</td>
                <td>july@example.com</td>
              </tr>
            </tbody>
            </table>
          </div>
            </div>
        </div>
  </div>
     <!--Gols Master-->
    <div class="card">
        <div class="card-header" id="headingTwo">
          <h5 class="mb-0">
            <button class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#golsMaster" aria-expanded="false" aria-controls="golsMaster">
              Gols Master
            </button>
          </h5>
        </div>
        <div id="golsMaster" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
          <div class="card-body">
            <table class="table">
                <thead>
                  <tr>
                    <th>Nº</th>
                    <th>Data</th>
                    <th>Hora</th>
                    <th>Equipe 1</th>
                    <th>G1</th>
                    <th>G2</th>
                    <th>Equipe 2</th>
                    <th>Categoria</th>
                    <th>Árbitro</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>John</td>
                    <td>Doe</td>
                    <td>john@example.com</td>
                  </tr>
                  <tr>
                    <td>Mary</td>
                    <td>Moe</td>
                    <td>mary@example.com</td>
                  </tr>
                  <tr>
                    <td>July</td>
                    <td>Dooley</td>
                    <td>july@example.com</td>
                  </tr>
                </tbody>
            </table>
          </div>
        </div>
  </div>
    <!--Jogos Senior-->
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#jogosSenior" aria-expanded="false" aria-controls="jogosSenior">
          Jogos Senior
        </button>
      </h5>
    </div>
    <div id="jogosSenior" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
      	<div class="jumbotron text-center">
	        <h1>Artilharia</h1>
	        <h2>Categoria: Sênior</h2> 
   		</div>
        <table class="table">
        <thead>
              <tr class="jumbotron text-center">
                        <th>Nº</th>
                        <th>Jogador</th>
                        <th>Equipe</th>
                        <th>Gols</th>
                    </tr>
        </thead>
            <tbody>
              <tr>
                        <td>1</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
                
                    <tr>
                        <td>2</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
      
                    <tr>
                        <td>3</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
                    
                    <tr>
                        <td>4</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
                    
                    <tr>
                        <td>5</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
                    
                    <tr>
                        <td>6</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
                    
                    <tr>
                        <td>7</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
                    
                    <tr>
                        <td>8</td>
                        <td>Fulano</td>
                        <td>*Equipe*</td>
                        <td>xx</td>
                    </tr>
            </tbody>
          </table>
      </div>
    </div>
  </div>
    
    <!--Gols Senior-->
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#golsSenior" aria-expanded="false" aria-controls="golsSenior">
          Gols Senior
        </button>
      </h5>
    </div>
    <div id="golsSenior" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
    <div class="card-body">
        <table class="table">
            <thead>
              <tr>
                <th>Nº</th>
                <th>Data</th>
                <th>Hora</th>
                <th>Equipe 1</th>
                <th>G1</th>
                <th>G2</th>
                <th>Equipe 2</th>
                <th>Categoria</th>
                <th>Árbitro</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>John</td>
                <td>Doe</td>
                <td>john@example.com</td>
              </tr>
              <tr>
                <td>Mary</td>
                <td>Moe</td>
                <td>mary@example.com</td>
              </tr>
              <tr>
                <td>July</td>
                <td>Dooley</td>
                <td>july@example.com</td>
              </tr>
            </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

</body>
</html>