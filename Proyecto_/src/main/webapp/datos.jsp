<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="css/styles.css" />

<style>
/* Estilo para la tabla */
table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
	font-family: Arial, sans-serif;
	border: 1px solid #ddd;
}

/* Estilo para las celdas del encabezado */
th {
	background-color: #f2f2f2;
	color: #333;
	font-weight: bold;
	padding: 10px;
	border: 1px solid #ddd;
	text-align: left;
}

/* Estilo para las celdas de datos */
td {
	padding: 10px;
	border: 1px solid #ddd;
	text-align: left;
}

/* Estilo para las filas alternas (opcional) */
tr:nth-child(even) {
	background-color: #f9f9f9;
}

/* Estilo para la primera fila (opcional) */
tr:first-child {
	background-color: #4CAF50;
	color: white;
}
</style>

<title>Insert title here</title>
</head>
<body>

	<header>
		<a href="index.jsp"><img class="logo" src="img/logo.png" /></a> <input
			type="checkbox" id="menu-bar" /> <label class="label" for="menu-bar">Menu</label>

		<nav class="menu">
			<ul class="ul_menu">
				<li class="list_menu"><a class="tex_menu" href="index.jsp">Inicio</a>
				</li>
				<li class="list_menu"><a class="tex_menu" href="servicios.jsp">Servicios</a>
				</li>
				<li class="list_menu"><a class="tex_menu" href="precios.jsp">Precios</a>
				</li>
				<li class="list_menu"><a class="tex_menu" href="nosotros.jsp">Nosotros
						+</a>
					<ul class="ul_menu">
						<li class="list_menu"><a class="tex_menu"
							href="contactanos.jsp">Contactanos</a></li>
						<li class="list_menu"><a class="tex_menu"
							href="informacion.jsp">Informacion</a></li>
					</ul></li>
				<li class="list_menu"><a class="tex_menu"
					href="login_register.jsp">Iniciar sesion y crear cuenta
						gratuita </a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1>Hola mundo desde JSTL y MySQl</h1>
	<br>
	<br>
	<br>
	<br>
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>Telefono</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${base}" var="c">
				<tr>
					<td>${c.id}</td>
					<td>${c.nombre}</td>
					<td>${c.apellido}</td>
					<td>${c.telefono}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br>
	<br>
	<br>


	<footer>
		<section class="footer_text">
			<h3 class="footer-titulo">UbicaciÃ³n</h3>
			<p class="footer-texto">Calle 170 N 92</p>
		</section>
		<section class="footer_text">
			<h3 class="footer-titulo">Contacto</h3>
			<p class="footer-texto">+57 3134204054</p>
		</section>
		<section class="footer_text">
			<h3 class="footer-titulo">Gmail</h3>
			<p class="footer-texto">Segurymail@gmail.com</p>
		</section>
	</footer>
</body>
</html>

