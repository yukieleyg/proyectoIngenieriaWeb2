@extends('principal')

@section('encabezado')
	<h2 style="font-family:pokemon;">Pokedex</h2>
@stop

@section('contenido')
	<section align="center">
		<article>
			@foreach($pokemons as $pokemon)
				<!-- <article id="pokemon">
					<span>{{ $pokemon->nombre }}</span>
					<br>
					<img src="{{ asset("img/pokemon/$pokemon->foto") }}" alt="">
					<a href="">Ver PDF</a>
				</article> -->

				<div class="panel panel-primary" id="pokemon">
				  <div class="panel-heading">
				    <h3 class="panel-title" style="font-family:pokemon; font-weight: 100;">{{ $pokemon->id.' - '.$pokemon->nombre }}</h3>
				  </div>
				  <div class="panel-body">
				    <img src="{{ asset("img/pokemon/$pokemon->foto") }}" alt="">
				    Peso: {{$pokemon->peso}} kg<br>
				    Altura: {{$pokemon->altura}} m<br>
				    <span class="ataquePokemon">Ataque: {{$pokemon->ataque}}</span>
				    <a href="{{url('/darPoder')}}/{{$pokemon->id}}" class="glyphicon glyphicon-plus"></a>
				    <br>
					<a href="{{url('/pdfPokemon')}}/{{$pokemon->id}}">Ver PDF</a>
				  </div>
				</div>
			@endforeach
			<article class="paginacion">
				<!-- {!! $pokemons->links() !!} -->
				{!! $pokemons->Render() !!}
			</article>
		</article>
	</section>
@stop
