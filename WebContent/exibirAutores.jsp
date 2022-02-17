<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Persistencia.BaseDados, java.util.ArrayList,Modelo.Autor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem de Autores cadastrados!</title>
<style>
#id1 {
text-align: center;
position: absolute;
width:100%;
height: 110vh;
background: #F08080;
}
 table {
        	border: 1px solid black;
        	margin-top: 10px;
        	background: #F4A460;
        	color: white;
        	font-family: verdana;
        	font-size: 15px;
        	font-weight: bold;
       }
th{
color: white;
font: Arial;
}
.img{
width: 50px;
height: 50px;
}
</style>
</head>
<body>
<%    
    BaseDados bd=new BaseDados();
    ArrayList<Autor>autores=bd.exibirAutores();

%>
   <div id="id1">
 <center><b><h1>Listagem dos Autores:</h1></center></b><br>
  
   
<center><table border=2cellspacing=0  width="50%"></center> 
   <tr>
        <th>Nome </th>
        <th>Endereco</th>
        <th> Ações</th>
   </tr>
   <%for(int i=0; i<autores.size();i++) {
        Autor autor=autores.get(i);%>
   <tr>
   <td><%=autor.getNome()%></td>
   <td><%=autor.getEndereco()%></td>
   <td> 
   <a href="atualizacaoAutor.jsp?pos=<%=i%>">
   <img src="img/editar.png" class="img">
   </a>
   <a href="exclusaoAutor.jsp?pos=<%=i%>" >
   <img src="img/excluir.png"class="img">
   </a>
   </td>
   </tr>
   <%} %>
   </table>
  </div>
</body>
</html>