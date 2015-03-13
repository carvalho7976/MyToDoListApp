<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Rosario' rel='stylesheet' type='text/css'>
<title>MyToDoListApp</title>

</head>
<body>
		
		<div class ="main-content">
		<h1>Olá</h1>
		<form action="ServletCentral" method="post" class="main-form">
		     <input type=button	onClick="location.href='/MyToDoListApp/cadastrar.jsp'"  class="btn btn-default botao"  value='Criar Nota'>
			 <input type="hidden" name="acao" value="listarNotas" />
				<input type="submit" class="btn btn-default botao flutua"	 value='Listar Notas'>
			</form>
		</div>
		
		<div id="rodape">
			<h4>&copy Gerência de Configuração 2015 </h4>
		</div>
</body>
</html>