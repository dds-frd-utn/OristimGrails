<%@ page import="session.SessionManager" %>
<%@ page import="session.UserSession" %>
<!DOCTYPE HTML>
<html>
<head>
	<!-- Librerias CSS Materialize y Material -->
	<!-- <link rel="stylesheet" href="./mdl/material.min.css">
	<script src="./mdl/material.min.js"></script> -->

	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link type="text/css" rel="stylesheet" href="./materialize/css/materialize.min.css"  media="screen,projection"/>

	<!-- Librerias CSS propias -->
	<link rel="stylesheet" href="./css/common.css">
	<link rel="stylesheet" href="./css/propios.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		
	<title>Oristim - Index</title>
</head>


<!-- INICIO PAGINA -->
<body>
	<!-- Barra de Navegacion de la pagina -->
        <g:render template="components/menuNavBar_view"/>
 
 	<!-- Slider con imagenes de Juegos --> 
        <g:render template="components/gameSlider_view"/>
         
 	<div id= "show-frame" class="show-frame">
	  	<h4>Ofertas</h4>
	</div>	
                    
<% 
//    Muestra el usuario actualmente creado.
                        def smgr = new SessionManager(session);
                        def u = smgr.getCurrentUsr();
                        if(u)
                            out.println("Usuario Logeado <"+u.getNombre()+u.getApellido()+"> Esto va a estar hasta cerrar navegador");
%>
                    
  	<div class="section white">
	    <div class="row container">
		    <h2 class="header"><!-- Nuestros Juegos: --></h2>					 
		    <!-- <p class="grey-text text-darken-3 lighten-3">Descripcion de la pagina</p>-->

		    <!-- Mostrar Ofertas de Juegos -->
                        <!--<div id = "mostrarJuegos"></div>-->
                        <g:render template="components/listaOfertas_view"/>
	    </div>
  	</div>  		  
</body>

<!-- Barra de Navegacion de la pagina -->
	<g:render template="components/pageFooter_view"/>

<!-- Incluir Scripts -->
<script type="text/javascript" src="./jquery/jquery.js"></script>
<script type="text/javascript" src="./materialize/js/materialize.min.js"></script>
<!-- Iniciar Librerias Propias JS -->
<script type="text/javascript" src="./js/common.js"></script>
</html> 

<!--<script type="text/javascript">
	/*Cargar Menu*/
	$("#menuNavBar").load("./components/menuNavBar_view.html"); 
	/*Cargar Ofertas de Juegos*/
	$("#mostrarJuegos").load("./components/listaOfertas_view.html"); 
	/*Cargar Parallax*/
	$("#gameSlider").load("./components/gameSlider_view.html"); 	
	/*Cargar Footer*/
	$("#pageFooter").load("./components/pageFooter_view.html");	
</script>-->