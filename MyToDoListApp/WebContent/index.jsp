<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<title>MyToDoListApp</title>

</head>
<body>
		
		<div id ="div-centro-index">
		<h1 align ="center">Olá</h1>
		<form action="ServletCentral" method="post" class="form-horizontal">
		     <input type=button	onClick="location.href='/MyToDoListApp/cadastrar.jsp'"  class="btn btn-info"  value='Criar Nota'>
			 <input type="hidden" name="acao" value="listarNotas" />
				<input type="submit" class="btn btn-warning"	 value='Listar Notas'>
			</form>
		</div>
		
		<div id="rodape">
			<h4 align="center" >@2015 Gerência de Configuração</h4>
		</div>
</body>
</html>