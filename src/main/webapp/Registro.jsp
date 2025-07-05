<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>FORMULARIOREGISTRO</h2>
	
	<form action="Recoge_datos.jsp" method="POST">
  <label for="nombre">Nombre:</label> 
  <input type="text" id="nombre" name="nombre.txt" required>
	<br>
  <label for="apellido">Apellido:</label>
  <input type="text" id="apellido" name="apellido.txt" required>
<br>
  <label for="usuario">Usuario:</label>
  <input type="text" id="usuario" name="usuario.txt" required>
<br>
  <label for="password">Contraseña:</label>
  <input type="password" id="password" name="password.txt" required>
<br>
	<div>
	
		<label for ="pais">Pais:</label> <br>
		<select name="pais" id="pais">
			<option>COLOMBIA</option>
			<option>Peru</option>
			<option>argentina</option>
			<option>otro</option>
			
		
		</select>
		
	</div>
<br>

  <div class="radio-group">
    <label>Tegnolocia :</label><br>    
    <label><input type="radio" name="tecnologia" value="js" required> js</label><br>    
    <label><input type="radio" name="tecnologia" value="java" required> java</label><br>
    <label><input type="radio" name="tecnologia" value="php" required> php</label><br>
	<br>
  </div>

  <input type="submit" name="button" id="button" value="Enviar">
</form>


</body>

</html>