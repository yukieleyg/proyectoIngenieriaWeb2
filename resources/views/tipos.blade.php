@extends('principal')

@section('encabezado')
	<h2 style="font-family:pokemon;">Pokémon Tipo:{{$tipo->nombre}}</h2>
@stop

@section('contenido')
	<section align="center">
		<article>
			@foreach($pokemon as $p)
				@if($tipo->nombre ==="Planta" or $tipo->nombre ==="Bicho")
					<div class="panel panel-success" id="pokemon">
				@elseif($tipo->nombre==="Volador" or $tipo->nombre==="Agua")
					<div class="panel panel-info" id="pokemon">
				@elseif($tipo->nombre==="Veneno" or $tipo->nombre=== "Hada")
					<div class="panel panel-default" id="pokemon">
				@elseif($tipo->nombre==="Eléctrico" or $tipo->nombre === "Tierra")
					<div class="panel panel-warning" id="pokemon">
				@elseif($tipo->nombre==="Fuego")
					<div class="panel panel-danger" id="pokemon">
				@elseif($tipo->nombre==="Normal")
					<div class="panel panel-primary" id="pokemon">
				@endif  

				  <div class="panel-heading">
				    <h3 class="panel-title" style="font-family:pokemon; font-weight: 100;">{{ $p->id.' - '.$p->nombre }}</h3>
				  </div>
				  <div class="panel-body">
				    <img src="{{ asset("img/pokemon/$p->foto") }}" alt="">
				    Peso: {{$p->peso}} kg<br>
				    Altura: {{$p->altura}} m<br>
				    <span class="ataquePokemon">Ataque: {{$p->ataque}}</span>
				    <a href="{{url('/darPoder2')}}/{{$p->id}}/{{$tipo->id}}" class="glyphicon glyphicon-plus"></a>
				    <br>
					<a href="{{url('/pdfPokemon')}}/{{$p->id}}">Ver PDF</a>
				  </div>
				</div>
			@endforeach
			<article class="paginacion">
				{!! $pokemon->links() !!}
			</article>
		</article>
	</section>
@stop