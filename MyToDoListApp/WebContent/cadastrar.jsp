<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criar nota</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Rosario' rel='stylesheet' type='text/css'>
</head>
<body>
	
		<div id ="main-content">
			<h3>Criar Nota</h3>
			<form action="ServletCentral" method="post" class="main-form">
				<input type="hidden" name="acao" value="criarNotaCmd" />
				<textarea rows="5" cols="50" type="text" name="texto"> </textarea> <br/>
				<section class="section-buttons">
					<input type="button" class="btn botao"	onClick="location.href='/MyToDoListApp/index.jsp'" value='Cancelar'>
					<input type="submit" value='Salvar' class="btn btn-success botao flutua"/>
				</section>
			</form>
		</div>	
		
		<div id="rodape">
			<h4>&copy Gerência de Configuração 2015 </h4>
		</div>
	
</body>
</html>