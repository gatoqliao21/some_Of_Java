<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page   language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%


String  usuario = request.getParameter("usuario.txt");
String  passwrd = request.getParameter("password.txt");


try{

	
    String url = "jdbc:sqlserver://localhost:1433;databaseName=formulario1;encrypt=true;trustServerCertificate=true";




    java.sql.Connection conn = java.sql.DriverManager.getConnection(url, "sa","Innova2025-1");

	PreparedStatement preparada = conn.prepareStatement("SELECT * FROM usuarios WHERE usuario = ? AND contrasena = ?");
	
	preparada.setString(1, usuario);
	
	preparada.setString(2, passwrd);
	
	ResultSet miResultset = preparada.executeQuery();
	
	
	// retorna true siempre y cuando el cursor se mueva una posicion en el resultset
	// retorna false si el cursor se encuentra antes o despues del ultimo registro
	
	if(miResultset.next())		out.println("autorizado");
		else	out.println("no existe p wano");
				
			
		
	
	

	
	

}
catch( Exception e){
	
	out.println("Ha habido un error: " + e.getMessage());
	
	
	
	
	
}



%>





</body>
</html>