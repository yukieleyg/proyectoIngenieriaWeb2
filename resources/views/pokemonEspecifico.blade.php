@extends('principal')

@section('encabezado')
	<h2 style="font-family:pokemon;">Pokémon: {{$pokemon->nombre}}</h2>
@stop

@section('contenido')
<section align="center">
	<div class="panel panel-warning" id="panelPokemonE">
	  <div class="panel-heading">
	    <h3 class="panel-title" style="font-family:pokemon; font-weight: 100;">{{ $pokemon->id.' - '.$pokemon->nombre }}</h3>
	  </div>
	  <div class="panel-body" id="panelBody">
	    <img align="left" src="{{ asset("img/pokemon/$pokemon->foto") }}" alt="">
	    <br>
	    Peso: {{$pokemon->peso}} kg<br>
	    Altura: {{$pokemon->altura}} m<br>
	    <span class="ataquePokemon">PC: {{$pokemon->ataque}}</span>
	    <a href="{{url('/darPoder')}}/{{$pokemon->id}}" class="glyphicon glyphicon-plus"></a>
	    <br>
	    Tipos: <br>
	     @foreach($tNombres as $nombre)
	  	@if($nombre=="Planta")
	    	<a href="{{url('/tipos')}}/1" class="glyphicon glyphicon-tree-deciduous"></a>
	  	@elseif($nombre=="Veneno")
		    <a href="{{url('/tipos')}}/2" class="glyphicon glyphicon-warning-sign"></a>
	  	@elseif($nombre=="Fuego")
		    <a href="{{url('/tipos')}}/3" class="glyphicon glyphicon-fire"></a>
	  	@elseif($nombre=="Volador")
		    <a href="{{url('/tipos')}}/4" class="glyphicon glyphicon-send"></a>
	  	@elseif($nombre=="Agua")
		    <a href="{{url('/tipos')}}/5" class="glyphicon glyphicon-tint"></a>
	  	@elseif($nombre=="Bicho")
		    <a href="{{url('/tipos')}}/6" class="glyphicon glyphicon-leaf"></a>
	  	@elseif($nombre=="Normal")
		    <a href="{{url('/tipos')}}/7" class="glyphicon glyphicon-record"></a>
	  	@elseif($nombre=="Tierra")
	    	<a href="{{url('/tipos')}}/9" class="glyphicon glyphicon-globe"></a>
	  	@elseif($nombre=="Eléctrico")
	    	<a href="{{url('/tipos')}}/8" class="glyphicon glyphicon-flash"></a>
	  	@elseif($nombre=="Lucha")
	    	<a href="{{url('/tipos')}}/11" class="glyphicon glyphicon-link"></a>
	  	@elseif($nombre=="Hada")
	    	<a href="{{url('/tipos')}}/10" class="glyphicon glyphicon-heart-empty"></a>
	  	@elseif($nombre=="Roca")
	    	<a href="{{url('/tipos')}}/13" class="glyphicon glyphicon-registration-mark"></a>
	  	@elseif($nombre=="Hielo")
		    <a href="{{url('/tipos')}}/15" class="glyphicon glyphicon-ice-lolly-tasted"></a>
	  	@elseif($nombre=="Psíquico")
	   		<a href="{{url('/tipos')}}/12" class="glyphicon glyphicon-eye-open"></a>
	  	@elseif($nombre=="Fantasma")
		    <a href="{{url('/tipos')}}/16" class="glyphicon glyphicon-cloud"></a>
	  	@elseif($nombre=="Acero")
		    <a href="{{url('/tipos')}}/14" class="glyphicon glyphicon-wrench"></a>
	  	@else
	    	<a href="url(/tipos/)" class="glyphicon glyphicon-question-sign"></a>
	    @endif
	@endforeach
	<br>
		<a href="{{url('/pdfPokemon')}}/{{$pokemon->id}}">Ver PDF</a>
	  </div>
	</div>
</section>
@stop