<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.ufc.quixada.entidades.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<title>MyToDoListApp</title>
</head>
<body>
	<div id ="div-centro-listar">
	<h1 align="center">Notas adicionadas </h1>
	<%List<Nota> notas = (ArrayList<Nota>) session.getAttribute("listaNota");%>
		<%if (notas != null && !notas.isEmpty()) {%>
		<form action="ServletCentral" method="post" class="form-horizontal">
			<table border="1" align="center" class="table">
				<% for (int i = 0; i < notas.size(); i++) {	%>
					<tr>
						<th align="center">Feito?/!</th>
						<th align="center">Nota</th>
					</tr>
						<tr>
						<td align="center">
							<%if(notas.get(i).status()){%> <input type="checkbox" name="IDnotas" checked="checked" value="<%notas.get(i).getId();%>"/> 							<%}	else{%> <input type="checkbox" name="IDnotas" value="<%= notas.get(i).getId()%>"/> <%} %>
					</td>
					<td align="center">
						<% out.print(notas.get(i).getTexto());%>
					</td>
				</tr>
		
					<%}%>
			</table>
			<input type="hidden" name="acao" value="removerNotaCmd" />
			<input  type=button	onClick="location.href='/MyToDoListApp/index.jsp'"	value='Voltar' class="btn">
			<input type="submit" value='Salvar' class="btn btn-success"/>
		</form>	
		<%}else{%>
			<h3>Lista vazia</h3>
			<input  type=button	onClick="location.href='/MyToDoListApp/index.jsp'" class="btn"	value='Voltar'>
		<%} %>
		
	</div>
		<div id="rodape">
			<h4 align="center" >@2015 Gerência de Configuração</h4>
		</div>
</body>
</html>