@extends('principal')

@section('encabezado')
	<h2 style="font-family:pokemon;">Pokémon : {{$pokemon->nombre}}</h2>
@stop

@section('contenido')
<section align="center" id="seccionP">
	<div class="panel panel-primary" id="panelPokemon">
	  <div class="panel-heading">
	    <h3 class="panel-title" style="font-family:pokemon; font-weight: 100;">{{ $pokemon->id.' - '.$pokemon->nombre }}</h3>
	  </div>
	  <div class="panel-body">
	    <img src="{{ asset("img/pokemon/$pokemon->foto") }}" alt="">
	    Peso: {{$pokemon->peso}} kg<br>
	    Altura: {{$pokemon->altura}} m<br>
	    <span class="ataquePokemon">PC: {{$pokemon->ataque}}</span>
	    <a href="{{url('/darPoder')}}/{{$pokemon->id}}" class="glyphicon glyphicon-plus"></a>
	    <br>
		<a href="{{url('/pdfPokemon')}}/{{$pokemon->id}}">Ver PDF</a>
	  </div>
	</div>
</section>
@stop