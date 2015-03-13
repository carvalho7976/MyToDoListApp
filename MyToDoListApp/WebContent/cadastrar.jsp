<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criar nota</title>
<link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>
	
		<div id ="div-centro">
			<h3 >Criar Nota</h3>
			<form action="ServletCentral" method="post" class="form-horizontal">
				<input type="hidden" name="acao" value="criarNotaCmd" />
				<textarea rows="5" cols="50" type="text" name="texto"> </textarea> <br/>
				<input type="button" class="btn"	onClick="location.href='/MyToDoListApp/index.jsp'" value='Cancelar'>
				<input type="submit"	 value='Salvar' class="btn btn-success"/>
			</form>
		</div>	
		
		<div id="rodape">
			<h4 align="center" >@2015 Gerência de Configuração</h4>
		</div>
	
</body>
</html>