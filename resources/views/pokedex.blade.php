@extends('principal')

@section('encabezado')
	<h2 style="font-family:pokemon;">Pokedex ({{$cantidad}})</h2>
@stop

@section('contenido')
	<section align="center">
		<article>
			@foreach($pokemons as $pokemon)
				<div class="panel panel-primary" id="pokemon">
				  <div class="panel-heading">
				    <h3 class="panel-title" style="font-family:pokemon; font-weight: 100;">{{ $pokemon->id.' - '.$pokemon->nombre }}</h3>
				  </div>
				  <div class="panel-body">
				  	<a  href="{{url('/pokemonEspecifico')}}/{{$pokemon->id}}" >
				   	 <img src="{{ asset("img/pokemon/$pokemon->foto") }}">
				   	</a>
				    Peso: {{$pokemon->peso}} kg<br>
				    Altura: {{$pokemon->altura}} m<br>
				    <span class="ataquePokemon">PC: {{$pokemon->ataque}}</span>
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
