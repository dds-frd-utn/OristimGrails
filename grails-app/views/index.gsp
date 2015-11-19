<!DOCTYPE HTML>
<html>
<head>
	<!-- Librerias CSS Materialize y Material -->
	<link  rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link type="text/css" rel="stylesheet" href="/Oristim/materialize/css/materialize.min.css"  media="screen,projection"/>

	<!-- Librerias CSS propias -->
	<link rel="stylesheet" href="/Oristim/css/common.css">
	<link rel="stylesheet" href="/Oristim/css/propios.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		
	<title>Oristim - Index</title>
</head>


<!-- INICIO PAGINA -->
<body>
    <!-- Barra de Navegacion de la pagina -->
    <g:render template="/components/menuNavBar_view"/>
 
    <!-- Slider con imagenes de Juegos --> 
    <g:render template="/components/gameSlider_view"/>
         
    <div id= "show-frame" class="show-frame">
            <h4>
                <%if(!plataforma) plataforma = 'Todos'%>
                ${plataforma}
            </h4>
    </div>	
    <div class="section white">
        <div class="row container">				 
            <!-- Mostrar Ofertas de Juegos -->
            <g:render template="/components/listaOfertas_view"/>
        </div>
    </div>

    %{-- <div id="controller-list" role="navigation">
        <h5>No me borres los controladores, fede:</h5>
        <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
            </g:each>
        </ul>
    </div> --}%

</body>

<!-- Footer de la pagina -->
<g:render template="/components/pageFooter_view"/>

</html> 
<!-- Incluir Scripts -->
<script type="text/javascript" src="/Oristim/jquery/jquery.js"></script>
<script type="text/javascript" src="/Oristim/materialize/js/materialize.min.js"></script>
<!-- Iniciar Librerias Propias JS -->
<script type="text/javascript" src="/Oristim/js/common.js"></script>