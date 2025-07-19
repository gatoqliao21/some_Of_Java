<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	// leyendo datos del formulario
		String  ciudad= request.getParameter("ciudad");
		
	
	// creando la cookie 
	Cookie laCookie = new Cookie("agencia_viajes.ciudad_favorita",ciudad);
	// tiempo de vida de la cookie 
	laCookie.setMaxAge(365*24*60*60);  // un año segun calculo del parametro
	
	//enviar a usuario 
	
	
	response.addCookie(laCookie);
	
	
	
	
	%>
gracias por enviar tus preferencias 

	<a  href="agencia_viajes.jsp"  >ir a la agencia de viajes		</a>
		
</body>
</html>