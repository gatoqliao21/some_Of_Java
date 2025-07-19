<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1  style="text-align:center">Agencia de viajes</h1>
	<%
	
			//valor por defecton 
			String ciudad_fav = "Madrid";
			
			/*
			lee la cookie de la peticion del navegador 
			 se utiliz el metodo getcookie
			*/ 
			Cookie[]  lascookies = request.getCookies();
			
			
			System.out.println(Arrays.toString(lascookies));
			//buscar preferencias 
			if (lascookies!=null){
				 for(Cookie cookie_temporal: lascookies){
					 if("agencia_viajes.ciudad_favorita".equals(cookie_temporal.getName())){
						 
						 ciudad_fav= cookie_temporal.getValue();
						 
						 break;
					 }
					 
				 }
				
			}
			
	
	%>
	
	
	<h3>vuelos a <%= ciudad_fav %></h3>
	
	
	<p>texto de ejemplo </p>
	<p>texto de ejemplo </p>
	<p>texto de ejemplo </p>
	
	<h3>hoteles en <%= ciudad_fav %></h3>
	
	
	<p>texto de ejemplo </p>
	<p>texto de ejemplo </p>
	<p>texto de ejemplo </p>
	
	<h3>descuentos restaurantes en <%= ciudad_fav %></h3>
	
	
	<p>texto de ejemplo </p>
	<p>texto de ejemplo </p>
	<p>texto de ejemplo </p>
	
</body>
</html>