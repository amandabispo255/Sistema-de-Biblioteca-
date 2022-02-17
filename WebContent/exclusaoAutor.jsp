<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="Persistencia.BaseDados" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Excluir o Autor</title>
<style>
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

</style>
</head>
<body>
 <%   
 int pos=Integer.parseInt(request.getParameter("pos"));
 
 
 BaseDados bd=new BaseDados();
 bd.exclusaoAutor(pos);
 %>
 <div id="id1">
 Exclusão de Autores
 </div>
 <div id="id2">
		<center><h1>Exclusão de Autor realizada com sucesso!</h1></center><br><br>
		<center><label><a href="CadastroAutor.jsp">Fazer um novo cadastro?</a></label></center>
        <center><label><a href="exibirAutores.jsp">Listar os autores cadastrados?</a><label></center>
</div>
		</body>
</html>