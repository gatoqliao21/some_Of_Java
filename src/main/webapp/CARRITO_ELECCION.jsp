<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import= "java.util.*"%>
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


<script>
			
			
			
			var tiempo_actual = new Date();
			console.log(tiempo_actual)
</script>

<%




// COMANDO PARA   VALIDAR LA SESION POR 10 MIN
session.setMaxInactiveInterval(10 * 60); 


/*


se recupera la sesion  mis_elementos se castea como 
List<String> y se añade a listaElemento con 
"getatribute" que debuelve un objeto 

*/

List <String>  listaElemento= (List<String>)session.getAttribute("mis_elementos");


System.out.println(listaElemento);// imprime null

String mensaje = (listaElemento == null) ? "esta vacia" : "no esta vacia por se casteo";

System.out.println(mensaje);


//si  ESTA VACIO  LA LISTA DE RECUPERADO DE SESIONES
if(listaElemento==null)
{	
	// se sobreescribe el valor de listaElemento
	listaElemento= new ArrayList<String>();
			
	/*
	 - se crea una nueva lista "listaElemento" y se guarda 
	 en ella,la sesion bajo el 
	 nombre del primer parametro de "set.Attribute"
		
	*/
	
	
	 session.setAttribute("mis_elementos", listaElemento);
	
/*
activa  una  sesion para futuras solicitudes
 este metodo no va a tener mas relevancia mas que una vez 
 para cargar la sesion 

*/
	
}

/*
hasta aca se termina la validacion de los arreglos y 
de las sesiones iniciadas
*/

/*
se recuperan los valores de los inputs seleccionados
con el nombre "alimentos" al darle click a enviar
*/
String[] elementos =   request.getParameterValues("alimentos");



/*
si el elementos tiene algun valor entonces
se recorrec con un bucle for  se le asigna una varibale 
elementTemp a cada elemento recorrido
y se añade al arreglo listaElemento
*/
if(elementos!=null){
	
	for (String elementTemp :elementos){
	
		System.out.println("esto es un elemento recorrido :"+elementTemp);

		
	listaElemento.add(elementTemp);
	}
}


System.out.println(Arrays.toString(elementos));



for(String elementTemp : listaElemento)
{
	out.println("<li>"+ elementTemp +"</li>");

}	
System.out.println(listaElemento);
// esto imprimira en consola  una lista vacia ya que la sesion fue inicializada



%>
</body>
</html>

