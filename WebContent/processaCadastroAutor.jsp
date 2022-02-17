<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Persistencia.BaseDados"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Processando o cadastro de Autores</title>
<style>
#id1 {
text-align: center;
position: absolute;
width:100%;
height: 110vh;
background: #F08080;
font:50px verdana, arial, sans-serif;
}
#id2{
position: center;
background-color: #FFDEAD;
text-align:center;
border: 1px solid;
font: 11px #87CEEB, sans-serif;
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
<%
String nome=request.getParameter("nome");
String endereco=request.getParameter("endereco");

BaseDados bd=new BaseDados();
bd.inserirAutor(nome,endereco);
%>
<div id="id1">
<b><center><label>O Autor:</label></center></b>
<b><label>Nome:<%=nome %></label></b><br>
<b><label>Endereco:<%=endereco%></b></label><br>
<label>Foi cadastrado com SUCESSO!!</label><br><br>
<div id="id2">
<center><label><a class="menu" href="CadastroAutor.jsp">Fazer um novo cadastro?</a></label></center>
<center><label><a class="menu" href="exibirAutores.jsp">Listar os Autores cadastrados?</a><label></center>
</div>
</div>
</body>
</html>