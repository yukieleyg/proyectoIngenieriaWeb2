@extends('principal')

@section('encabezado')
	<h2>Pokedex</h2>
@stop

@section('contenido')
	@foreach($pokemons as $pokemon)
		<!-- <article id="pokemon">
			<span>{{ $pokemon->nombre }}</span>
			<br>
			<img src="{{ asset("img/pokemon/$pokemon->foto") }}" alt="">
			<a href="">Ver PDF</a>
		</article> -->

		<div class="panel panel-primary" id="pokemon">
		  <div class="panel-heading">
		    <h3 class="panel-title">{{ $pokemon->id.' - '.$pokemon->nombre }}</h3>
		  </div>
		  <div class="panel-body">
		    <img src="{{ asset("img/pokemon/$pokemon->foto") }}" alt="">
			<a href="{{url('/pdfPokemon')}}/{{$pokemon->id}}">Ver PDF</a>
		  </div>
		</div>
	@endforeach
	<!-- {!! $pokemons->links() !!} -->
	{!! $pokemons->Render() !!}
@stop
