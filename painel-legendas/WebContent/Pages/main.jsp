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

	<!-- Modal to edit profile -->
	<div class="modal fade" id="editProfileModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Editar perfil</h4>
				</div>
				<div class="modal-body">
					<form>
						<p><input type="text" class="myInput" placeholder="Novo nome de usuário" value="{nickname}"></p>
						<p><input type="email" class="myInput" placeholder="Novo e-mail" value="{email}"></p>
						<p><input type="password" class="myInput" placeholder="Nova senha" value="{senha}"></p>
						<br />
						<p><input type="submit" class="btn btn-success" value="Salvar"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /Modal to edit profile -->
	
	<!-- Modal to request entry -->
	<div class="modal fade" id="requestModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Solicitar entrada</h4>
				</div>
				<div class="modal-body">
					<form>
						<p><textarea class="myInput" placeholder="Mensagem" rows="5"></textarea></p>
						<br />
						<p><input type="submit" class="btn btn-success" value="Enviar"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /Modal to request entry -->

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand" href="index.html"><img src="../resources/images/logo.png" alt="Progressus HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Olá, {nickname}<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="sidebar-left.html" data-toggle="modal" data-target="#editProfileModal">Editar perfil</a></li>
							<li><a href="sidebar-left.html">Sair</a></li>
						</ul>
					</li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="portfolio">
				<div></div>
				<div class="teamDiv">
					<p class="teamName"><a href="#">Equipe</a></p>
					<img src="../resources/images/teste.png"> <br />
					<a class="btn" data-toggle="modal" data-target="#requestModal">Solicitar entrada</a>
				</div>
				<div class="teamDiv">
					<p class="teamName"><a href="#">Equipe</a></p>
					<img src="../resources/images/teste.png"> <br />
					<a class="btn" data-toggle="modal" data-target="#requestModal">Solicitar entrada</a>
				</div>
				<div class="teamDiv">
					<p class="teamName"><a href="#">Equipe</a></p>
					<img src="../resources/images/teste.png"> <br />
					<a class="btn" data-toggle="modal" data-target="#requestModal">Solicitar entrada</a>
				</div>
				<div class="teamDiv">
					<p class="teamName"><a href="#">Equipe</a></p>
					<img src="../resources/images/teste.png"> <br />
					<a class="btn" data-toggle="modal" data-target="#requestModal">Solicitar entrada</a>
				</div>
				<div class="teamDiv">
					<p class="teamName"><a href="#">Equipe</a></p>
					<img src="../resources/images/teste.png"> <br />
					<a class="btn" data-toggle="modal" data-target="#requestModal">Solicitar entrada</a>
				</div>
				<div></div>
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
