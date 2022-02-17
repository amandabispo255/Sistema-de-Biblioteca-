<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Persistencia.BaseDados,Modelo.Autor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizando o Autor</title>
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
height: 50px;
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
<% String nome=request.getParameter("nome");
    String endereco=request.getParameter("endereco");
    int pos=Integer.parseInt(request.getParameter("pos"));
    
       BaseDados bd=new BaseDados();
       bd.atualizacaoAutor(pos,nome,endereco);
       %> 
   <div id="id1">
<b><center><h2>Atualização de Autores:</h2></center></b>
</div>
<div id="id2">
<b><label>Nome:<%=nome %></label></b><br>
<b><label>Endereco:<%=endereco%></b></label><br>
<h2>Foi alterado com SUCESSO!!</h2><br><br>

<center><label><a class="menu" href="CadastroAutor.jsp">Fazer um novo cadastro?</a></label></center>
<center><label><a class="menu" href="exibirAutores.jsp">Listar os Autores cadastrados?</a><label></center>
</div>

</body>
</html>