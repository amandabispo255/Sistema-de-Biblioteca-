<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Inicial</title>
<style>
#id2 {
text-align: center;
position: relative;
width:110%;
height: 500px;
background: #F08080;

}
#id1 {
width: 102%;
height: 60px;
background:#FFDEAD;
position:relative;
color: black;
font-size: 20px;
padding: 10px;
font-weight: bold;
text-align: center;
}
.menu {
        	display: block;
        	text-decoration: none;
        	width: 380px;
        	height: 30px;
        	background-color: white;
        	color: black;
        	margin: 5px;
        	font-family: verdana;
        	font-size: 20px;
        	font-weight: bold;
        	text-align: center;
        	border: 1px solid black;
        	padding-top: 3px;
        }
.menu:hover {
        	background-color: black;
        	color: white;
        	}
</style>
</head>
<body>
 <div id="id1">
     <center><br>Menu</br></center>
 </div>
 <div id="id2">
     <a class="menu" href="CadastroLivro.jsp">Cadastrar Livro</a><br>
     <a class="menu" href="CadastroAutor.jsp">Cadastrar Autor</a><br>
     <a class="menu" href="exibirLivros.jsp">Listar livros cadastrados</a><br>
     <a class="menu" href="exibirAutores.jsp">Listar Autores cadastrados</a><br>
 </div>
 
 
</body>
</html>