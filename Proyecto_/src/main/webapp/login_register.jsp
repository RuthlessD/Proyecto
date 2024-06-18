<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="css/login_register.css" />
<title>Iniciar Sesión</title>
</head>
<div class="logoo">
	<a href="index.jsp"><img class="logo" src="img/logo.png" /></a>
	<body>
		<div class="login">
			<span class="animate"></span> <span class="animate2"></span>
			<div class="login-form log">
				<h2 class="animation" style="--i: 1; --j: 22">Inicia Sesión</h2>
				<form action="#">
					<div class="input-box animation" style="--i: 2; --j: 23">
						<input type="email" id="email" required /> <label>Correo</label>
						<i class="icon"><ion-icon name="contact"></ion-icon></i>
					</div>
					<div class="input-box animation" style="--i: 3; --j: 24">
						<input type="password" id="password" required /> <label>Contraseña</label>
						<i class="icon"><ion-icon name="lock"></ion-icon> </i>
					</div>

					<button class="btn animation" style="--i: 4; --j: 25" type="submit"
						id="login">Iniciar</button>
					<div class="pass animation" style="--i: 5; --j: 26">
						<a href="#" class="pass-link"> He olbidado mi contraseña</a>
					</div>
					<div class="crea-cuenta animation" style="--i: 6; --j: 27">
						<p>
							¿Primera vez en SeguryMail? <a href="#" class="register-link">Crea
								una cuenta</a>
						</p>
					</div>
				</form>
			</div>
			<div class="info-text login">
				<h2 class="animation" style="--i: 0; --j: 20">¡Bienvenido de
					Nuevo!</h2>
				<p class="animation" style="--i: 1; --j: 21">citationem odio
					quos quas officiis voluptates repellat itaque possimus? Recusandae
					labore nobis laudantium</p>
			</div>

			<div class="login-form regis">
				<h2 class="animation" style="--i: 20; --j: 1">Crea Una Cuenta
					Gratuita</h2>
				<form action="">
					<div class="input-box animation" style="--i: 21; --j: 2">
						<input type="text" id="username" required /> <label>Nombre
							de usuario</label> <i class="icon"><ion-icon name="person-add"></ion-icon>
						</i>
					</div>
					<div class="input-box animation" style="--i: 22; --j: 3">
						<input type="email" id="email1" required /> <label>Correo</label>
						<i class="icon"><ion-icon name="mail"></ion-icon> </i>
					</div>
					<div class="input-box animation" style="--i: 23; --j: 4">
						<input type="password" id="password1" required /> <label>Contraseña</label>
						<i class="icon"><ion-icon name="lock"></ion-icon></i>
					</div>
					<button class="btn animation" style="--i: 24; --j: 5" type="submit"
						value="Sign up" id="registro">Crear cuenta</button>
					<div class="crear-cuenta animation" style="--i: 25; --j: 6">
						<p>
							Si ya tienes una cuenta. <a href="#" class="login-link">
								Inicia sesión</a>
						</p>
					</div>
				</form>
			</div>

			<div class="info-text regis">
				<h2 class="animation" style="--i: 19; --j: 0">Registrese para
					usar SeguryMail</h2>
				<p class="animation" style="--i: 20; --j: 1">Estamos muy
					contentos de que esté aquí! Cree su cuenta de correo electrónico
					con SeguryMail ahora.</p>
			</div>
		</div>
		<script src="main.js"></script>
		<script src="login_register.js" type="module"></script>

		<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
	</body>
</div>
</html>
