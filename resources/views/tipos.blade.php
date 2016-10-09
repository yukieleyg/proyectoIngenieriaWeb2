@extends('principal')

@section('encabezado')
	<h2 style="font-family:pokemon;">Pokémon Tipo: {{$tipo->nombre}}</h2>
@stop

@section('contenido')
	<section align="center">
		<!-- <article id="tipos" class="header">
			@foreach($tipos as $t)
				<a href="{{url('/tipos')}}/{{$t->id}}" class="btn btn-info">{{$t->nombre}}</a>
			@endforeach
		</article> -->
		<article>
			@foreach($pokemon as $p)
				<div class="panel panel-primary" id="pokemon">
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