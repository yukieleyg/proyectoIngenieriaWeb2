<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>{{$pokemon->nombre}}</title>
	<link rel="stylesheet" href="{{asset("estilos/estilospdf.css")}}">
</head>
<body>
	<header>
		<div align="center">
			<img style="width: 200px;" id="logo" src="img/pokemon/poke-logo.png" align: "right">		
		</div>
	</header>
	<br>
	<form>
		<section style="display: inline-block;">
			<div id="imagenPokemon">
				<img id="pokePDF" src="img/pokemon/{{$pokemon->foto}}" alt="">
			</div>
			<h1 style="text-align: center; color:white; position:absolute; left: 260px; top:400px; font-size:40px;">{{$pokemon->nombre}}</h1>
		</section>
		<section>
			<table class="table table-striped table-hover" style="text-align: left; position: absolute; top:483px;left:1px; font-size:25px;">
				  	<tr>
				  		<td>ID Pokedex</td>
				  		<td>{{$pokemon->id}}</td>
				  	</tr>
				    <tr>
				      <td >Peso</td>
				      <td>{{$pokemon->peso}}</td>
				    </tr>		
				    <tr>
				      <td >Altura</td>
				      <td>{{$pokemon->altura}}</td>
				    </tr>
				    <tr>
				      <td >Poder</td>
				      <td>{{$pokemon->ataque}}</td>
				    </tr>
				    <tr>
				    	<td >Descripcion</td>
				    	<td style="font-size:20px; align-text:justify;">{{$pokemon->descripcion}}</td>
				    </tr>
			</table>
		</section>
	</form>
</body>
</html>