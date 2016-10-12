<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Painel de legendas</title>

	<link rel="shortcut icon" href="../resources/images/gt_favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="../resources/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="../resources/css/main.css">
	<link rel="stylesheet" href="../resources/css/mycss.css">
</head>

<body class="home">

	<!-- Modal to login -->
	<div class="modal fade" id="loginModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>
				<div class="modal-body">
					<form>
						<p><input type="text" class="myInput" placeholder="Nome de usuário"></p>
						<p><input type="password" class="myInput" placeholder="Senha"></p>
						<br />
						<p><input type="submit" class="btn btn-success" value="Entrar"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.navbar -->
	
	<!-- Modal to register -->
	<div class="modal fade" id="registerModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Criar conta</h4>
				</div>
				<div class="modal-body">
					<form>
						<p><input type="text" class="myInput" placeholder="Nome de usuário"></p>
						<p><input type="email" class="myInput" placeholder="E-mail"></p>
						<p><input type="password" class="myInput" placeholder="Senha"></p>
						<p><input type="password" class="myInput" placeholder="Confirme sua senha"></p>
						<br />
						<p><input type="submit" class="btn btn-success" value="Cadastrar-se"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand" href="index.html"><img src="../resources/images/logo.png" alt="Progressus HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="active"><a href="#">Página inicial</a></li>
					<li><a href="about.html">Equipes cadastradas</a></li>
					<li><a href="contact.html">Sobre o site</a></li>
					<li><a class="btn" id="loginButton" data-toggle="modal" data-target="#loginModal">ENTRAR</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row">
				<h1 class="lead">SIMPLES, PRÁTICO E CONFIÁVEL</h1>
				<p class="tagline">Cadastre-se e tenha acesso às maiores equipes de tradução do país. <br />
				Junte-se a elas e venha aprender inglês, português e vários outros idiomas, além de fazer novas amizades e, claro, ajudar as pessoas.</p>
				<p>
					<a class="btn btn-action btn-lg" role="button" id="loginButton" data-toggle="modal" data-target="#loginModal">ENTRAR</a>
					&nbsp;&nbsp;&nbsp;
					<a class="btn btn-action btn-lg" role="button" id="registerButton" data-toggle="modal" data-target="#registerModal">CRIAR CONTA</a>
				</p>
			</div>
		</div>
	</header>
	<!-- /Header -->

	<footer id="footer" class="top-space">
		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="#">Página inicial</a> | 
								<a href="about.html">Equipes cadastradas</a>
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>	
		
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="../resources/js/headroom.min.js"></script>
	<script src="../resources/js/jQuery.headroom.min.js"></script>
	<script src="../resources/js/template.js"></script>
</body>
</html>
