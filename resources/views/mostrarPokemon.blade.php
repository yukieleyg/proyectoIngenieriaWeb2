@extends('principal')

@section('encabezado')
	<h2 style="font-family:pokemon;">Pokémon : {{$p->nombre}}</h2>
@stop

@section('contenido')
<section align="center" id="seccionP">
	<div class="panel panel-primary" id="panelPokemon">
	  <div class="panel-heading">
	    <h3 class="panel-title" style="font-family:pokemon; font-weight: 100;">{{ $p->id.' - '.$p->nombre }}</h3>
	  </div>
	  <div class="panel-body">
	    <img src="{{ asset("img/pokemon/$p->foto") }}" alt="">
	    Peso: {{$p->peso}} kg<br>
	    Altura: {{$p->altura}} m<br>
	    <span class="ataquePokemon">Ataque: {{$p->ataque}}</span>
	    <a href="{{url('/darPoder')}}/{{$p->id}}" class="glyphicon glyphicon-plus"></a>
	    <br>
		<a href="{{url('/pdfPokemon')}}/{{$p->id}}">Ver PDF</a>
	  </div>
	</div>
</section>
@stop