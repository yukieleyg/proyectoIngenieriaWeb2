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
	     @foreach($pokemons as $p)
	  	@if($p->nombre=="Planta")
	    	<a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-tree-deciduous"></a>
	  	@elseif($p->nombre=="Veneno")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-warning-sign"></a>
	  	@elseif($p->nombre=="Fuego")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-fire"></a>
	  	@elseif($p->nombre=="Volador")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-send"></a>
	  	@elseif($p->nombre=="Agua")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-tint"></a>
	  	@elseif($p->nombre=="Bicho")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-leaf"></a>
	  	@elseif($p->nombre=="Normal")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-record"></a>
	  	@elseif($p->nombre=="Tierra")
	    	<a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-globe"></a>
	  	@elseif($p->nombre=="Eléctrico")
	    	<a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-flash"></a>
	  	@elseif($p->nombre=="Lucha")
	    	<a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-link"></a>
	  	@elseif($p->nombre=="Hada")
	    	<a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-heart-empty"></a>
	  	@elseif($p->nombre=="Roca")
	    	<a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphico-registration-mark"></a>
	  	@elseif($p->nombre=="Hielo")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon -ice-lolly-tasted"></a>
	  	@elseif($p->nombre=="Psiquico")
	   		<a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-eye-open"></a>
	  	@elseif($p->nombre=="Fantasma")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-cloud"></a>
	  	@elseif($p->nombre=="Acero")
		    <a href="{{url('/tipos')}}/{{$p->id}}" class="glyphicon glyphicon-wrench"></a>
	  	@else
	    	<a href="{{url('/pokedex')}}" class="glyphicon glyphicon-question-sign"></a>
	    @endif
	@endforeach
	<br>
		<a href="{{url('/pdfPokemon')}}/{{$pokemon->id}}">Ver PDF</a>
	  </div>
	</div>
</section>
@stop