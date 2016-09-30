<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>{{$pokemon->nombre}}</title>
	<link rel="stylesheet" href="{{asset("estilos/estilos.css")}}">
</head>
<body>
	<header>
		<h1 style="text-align: center;">{{$pokemon->id.' - '.$pokemon->nombre}}</h1>
		<hr>
	</header>
	<section style="display: inline-block;">
		<article id="artPDF01">
			<img id="pokePDF" src="img/pokemon/{{$pokemon->foto}}" alt="">
		</article>
	</section>
	<section>
		<article id="artPDF02">
			<span id="peso">Peso:</span> <br>
			 {{$pokemon->peso}}
			<br>
			<span id="altura">Altura:</span> <br>
			{{$pokemon->altura}}
		</article>
		<article id="artPDF03">
			<span id="descripcion">Descripción:</span> <br>
			{{$pokemon->descripcion}}
		</article>
	</section>
</body>
</html>