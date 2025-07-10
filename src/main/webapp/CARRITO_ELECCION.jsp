<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="CARRITO_ELECCION.jsp" method="post">
  <h3>Selecciona tus alimentos preferidos:</h3>

  <label>
    <input type="checkbox" name="alimentos" value="carne">
    Carne
  </label><br>

  <label>
    <input type="checkbox" name="alimentos" value="manzana">
    Manzana
  </label><br>

  <label>
    <input type="checkbox" name="alimentos" value="pescado">
    Pescado
  </label><br>

  <label>
    <input type="checkbox" name="alimentos" value="papa">
    Papa
  </label><br><br>

  <button type="submit">Enviar</button>
</form>

<h2>  esto es un formulario</h2>


<%
String[] elementos = request.getParameterValues("alimentos");


if(elementos!=null){
	
	for (String elementTemp :elementos){
			out.println("<li>"+elementTemp +"</li>");	
		
	}	}

	 %>
</body>
</html>

