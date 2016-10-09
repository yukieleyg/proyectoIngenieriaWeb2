<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>{{$pokemon->nombre}}</title>
	<link rel="stylesheet" href="{{asset("estilos/estilos.css")}}">
</head>
<body>
	<header>
		<div align="center">
			<img style="width: 200px;" id="logo" src="img/pokemon/poke-logo.png" align: "right">		
		</div>
	</header>
	<br>
	<section style="display: inline-block;">
		<article id="artPDF01">
			<img id="pokePDF" src="img/pokemon/{{$pokemon->foto}}" alt="">
		</article>
		<h1 style="text-align: center;">{{$pokemon->id.' - '.$pokemon->nombre}}</h1>
	</section>
	<section>
		<!--<img src="img/Pokeball.png">-->
		<table class="table table-striped table-hover " align="center" style= "font-family: 'Times New Roman', Times, serif;">
			  <tbody>
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
			      <td>Mucho</td>
			    </tr>
			    <tr>
			    	<td >Descripcion</td>
			    	<td>{{$pokemon->descripcion}}</td>
			    </tr>
		</table>
		<!--<article id="artPDF02">
			<span id="peso">Peso:</span> <br>
			 {{$pokemon->peso}}
			<br>
			<span id="altura">Altura:</span> <br>
			{{$pokemon->altura}}
		</article>
		<article id="artPDF03">
			<span id="descripcion">Descripción:</span> <br>
			{{$pokemon->descripcion}}
		</article>-->
	</section>
</body>
</html>