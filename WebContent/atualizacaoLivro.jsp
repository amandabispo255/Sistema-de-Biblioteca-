<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="Persistencia.BaseDados,Modelo.Livro" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar Livro</title>
 <style type="text/css">
		*{
	   font-family:verdana;
	}
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
select { 
background-color: #B0E0E6;
font:12px verdana, arial, helvetica, sans-serif;
color:#003399;
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
<%
int pos =Integer.parseInt(request.getParameter("pos"));
BaseDados bd=new BaseDados();
Livro livro=bd.getLivro(pos);
%>
<div id="id1">
 <center><b>Atualização do Livro: <%=livro.getTitulo() %></b></center><br>
</div>
<div id="id2">
			<form action="processaatualizacao.jsp" method="post">
<input type="text" name="titulo" placeholder="Digite um titulo" value="<%=livro.getTitulo() %> "class="campo"><br><br><br>
<input type="text" name="editora" placeholder="Digite a editora" value="<%=livro.getEditora() %>"class="campo"><br><br><br>
<select name="autor">
	<option value="Graciliano Ramos">Graciliano Ramos</option>
	<option value="Conceição Evaristo" selected>Conceição Evaristo</option>
	<option value="Cleberton Santos">Cleberton Santos</option>
</select><br><br><br>
<input type="hidden" name="pos" value="<%=pos %>">
<input type="submit" value="Atualizar Livro" class="botao">
			</form>
		</div>


</body>
</html>