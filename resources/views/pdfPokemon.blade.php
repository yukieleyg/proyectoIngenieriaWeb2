<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>{{$pokemon->nombre}}</title>
	<link rel="icon" type="image/png" href="/proyectoIngenieriaWeb2/public/img/favicon.ico" />
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
			<table class="table table-striped table-hover" style="text-align: center; position: absolute; top:483px;left:1.5px; font-size:25px;">
				  	<tr>
				  		<td>ID Pokedex</td>
				  		<td># {{$pokemon->id}}</td>
				  	</tr>
				    <tr>
				      <td >Peso</td>
				      <td>{{$pokemon->peso}} Kg.</td>
				    </tr>		
				    <tr>
				      <td >Altura</td>
				      <td>{{$pokemon->altura}} Mts.</td>
				    </tr>
				    <tr>
				      <td >Poder</td>
				      <td>{{$pokemon->ataque}} Pts</td>
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