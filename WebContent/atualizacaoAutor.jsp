<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Persistencia.BaseDados,Modelo.Autor" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar Autor</title>
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
Autor autor=bd.getAutor(pos);
%>
<div id="id1">
 <center><b>Atualização do Autor: <%=autor.getNome()%></b></center><br>
</div>
<div id="id2">
			<form action="processaatualizacaoAutor.jsp" method="post">
	
<input type="text" name="nome" placeholder="Digite um nome" value="<%=autor.getNome() %> "class="campo"><br><br><br>
<input type="text" name="endereco" placeholder="Digite o endereco" value="<%=autor.getEndereco() %>"class="campo"><br><br><br>
<input type="hidden" name="pos" value="<%=pos %>">
<input type="submit" value="Atualizar Autor" class="botao">
			</form>
		</div>


</body>
</html>