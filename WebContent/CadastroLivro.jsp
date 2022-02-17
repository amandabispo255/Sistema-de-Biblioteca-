<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
		<title>Cadastro de Livros</title>
 <style type="text/css">
		*{
	   font-family:verdana;
	}
		
#id1 {
text-align: center;
position: absolute;
width:100%;
height: 110vh;
background: #F08080;

}
#id2 {

width: 300px;
height: 300px;
background:#FFDEAD;
border: 1px solid;
position: relative;
}
.campos {
background-color:#B0E0E6;
font: 5px georgia, sans-serif;
color:#0033CC;
margin-right: 20px;
}
.botao {
position:center;
width: 50%;
left: 300px;
background-color: #DEB887;
font: 15px Arial, sans-serif;
color: black;
}
input[type=text], input[type=number], select{
          background-color: lightskyblue;
  }
input[type=text]:focus, input[type=number]:focus{
          background-color: beige;
        }
input {
          padding: 5px;
          font-size: 15px;
          border: 1px solid black;
        }
form{ 
width: 450px;
margin: 30px;
padding: 10px;
display: inline-block;
background-color: #FFDEAD;
text-align:center;
border: 1px solid;
font: 11px #87CEEB, sans-serif;
color: black;
padding-left:10px;
}
		
</style>
</head>
<body>
<div id="id1"><br><br>
		<div >
			<form action="processaCadastro.jsp" method="post">
			<br>
			<label><center>Sistema de Cadastro de Livros </center></label>
			<br><br>
<label>Titulo: </label>
<input type="text" name="titulo" placeholder="Digite um titulo" class="campo"><br><br><br>
<label>Editora: </label>
<input type="text" name="editora" placeholder="Digite a editora" class="campo"><br><br><br>
<label>Autor: </label>
<select name="autor">
	<option value="Graciliano Ramos">Graciliano Ramos</option>
	<option value="Concei��o Evaristo" selected>Conceição Evaristo</option>
	<option value="Cleberton Santos">Cleberton Santos</option>
</select><br><br><br>
<input type="submit" value="Continuar" class="botao">
			</form>
		</div>
		</div>
</body>
</html>