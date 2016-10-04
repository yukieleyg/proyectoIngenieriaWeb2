<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Pokémon</title>
	<script src="{{asset("js/jquery.js")}}"></script>
	<link rel="stylesheet" href="{{asset("css/bootstrap.css")}}">
	<link rel="stylesheet" href="{{asset("estilos/estilos.css")}}">
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="{{url('/home')}}"><img id="logo" src="img/pokemon/poke-logo.png" alt=""></a>
	    </div>

	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="{{url('/pokedex')}}">Pokedex</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tipos <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
				@foreach($tipos as $t)
	          		<li><a href="{{url('/tipos')}}/{{$t->id}}">{{$t->nombre}}</a></li>
	          	@endforeach
	          </ul>
	        </li>
	      </ul>
	      <form class="navbar-form navbar-left" role="search">
	        <div class="form-group">
	          <input type="text" class="form-control" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-default">Submit</button>
	      </form>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">Link</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				@yield('encabezado')
				<hr>
				@yield('contenido')
			</div>
		</div>
	</div>
	<footer>
		<hr>
		Ingeniería Web &copy; 2016
	</footer>
	<script src="{{ asset("js/bootstrap.js") }}"></script>
</body>
</html>