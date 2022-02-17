<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Persistencia.BaseDados" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Excluir o Livro</title>
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
 bd.exclusaoLivro(pos);
 %>
 <div id="id1">
 Exclusão de Livros
 </div>
 <div id="id2">
		<center><h1>Exclusão de livro realizada com sucesso!</h1></center><br><br>
		<center><label><a href="CadastroLivro.jsp">Fazer um novo cadastro?</a></label></center>
        <center><label><a href="exibirLivros.jsp">Listar os livros cadastrados?</a><label></center>
</div>
		</body>
</html>