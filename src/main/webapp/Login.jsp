<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	



	<h2>FORMULARIO LOGIN</h2>
	
	<form action="comprueba_Usuario.jsp" method="POST">
	  <label for="nombre">Nombre:</label> 
	
	  <label for="usuario">Usuario:</label>
	  <input type="text" id="usuario" name="usuario.txt" required>
	<br>
	  <label for="password">Contraseña:</label>
	  <input type="password" id="password" name="password.txt" required>
	

	
	  <input type="submit" name="button" id="button" value="Enviar">
</form>

</body>
</html>