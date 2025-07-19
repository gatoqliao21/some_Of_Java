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
		String  nombre = request.getParameter("nombre.txt");
		String  apellido = request.getParameter("apellido.txt");
		String  usuario = request.getParameter("usuario.txt");
		String  passwrd = request.getParameter("password.txt");
		String  pais= request.getParameter("pais");
		String  tecnologia= request.getParameter("tecnologia");
		

		
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");


	    try{
		    
     // se carga la url con los datos de la BD
     		String url = "jdbc:sqlserver://localhost:1433;databaseName=formulario1;encrypt=true;trustServerCertificate=true";

	    
	    java.sql.Connection conn = java.sql.DriverManager.getConnection(url, "sa","Innova2025-1");

		
		
		java.sql.Statement mi_statement = conn.createStatement();
		String excepcion_sql = "INSERT INTO usuarios(nombre,apellido,usuario,contrasena,pais,tecnologia) " +
                "VALUES ('" + nombre + "','" + apellido + "','" + usuario + "','" + passwrd + "','" + pais + "','" + tecnologia + "')";
		mi_statement.execute(excepcion_sql);
		
		
		
		out.println("exito en la ejcucio ");
		
		
	    }
	    catch( Exception e){
	    	
	    	out.println("a habido un error ");
	    	
	    	
	    	
	    }
		%>


</body>
</html>