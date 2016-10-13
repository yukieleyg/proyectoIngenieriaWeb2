<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\tipos;
use App\pokemon;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;
use Alert;
class principalController extends Controller
{
   public function index(){
         $tipos = tipos::all();
         return view('/principal', compact('tipos'));
   }
   public function home(){
         $tipos = tipos::all();
         return view('/inicio', compact('tipos'));
   }
   public function pokedex(){
         $pokemons = DB::table('pokemon')->paginate(8);
         //$cantidad = DB::select('select count(*) from pokemon');
         $cantidad = count(pokemon::all());
         $tipos = tipos::all();
   		return view('/pokedex', compact('pokemons','cantidad','tipos','page'));
   }
   public function buscar(Request $request){
      $nombre  = $request->input('pokemon_input');
      $tipos   = tipos::all();
      $pokemon = DB::table('pokemon AS P')->where('P.nombre', '=', $nombre)->select('P.id', 'P.nombre', 'P.altura', 'P.peso', 'P.ataque', 'P.descripcion', 'P.foto')->get();     
      foreach ($pokemon as $p) {
          return view('/mostrarPokemon',compact('tipos','p'));            
      }
      //$cantidad = count(pokemon::all());
      //$pokemons = DB::table('pokemon')->paginate(8);
      //Alert::error('El Pokémon que busca no fue encontrado, intenta con otro nombre...');
      alert()->error('El Pokémon que busca no fue encontrado, intenta con otro nombre...')->persistent('OK');
      return Redirect('/pokedex');//, compact('pokemons','cantidad','tipos','page'));
   }
   public function pokemonEspecifico($id){
      $pokemon = pokemon::find($id);
      $tipos   = tipos::all();
      $tiposPokemon = DB::table('pokemon_tipos as P')->where('P.id_pokemon','=',$id)->select('P.id_tipo')->get();
      $nombresTipo;
      foreach ($tiposPokemon as $p) {
         $id_tipo = $p->id_tipo;
         $nombresTipo[] = DB::table('tipos as t')->where('t.id','=',$id_tipo)->select('t.nombre','t.id')->get();
      }
      $pokemons;
      foreach ($nombresTipo as $p) {
         $pokemons[]=$p[0];
      }
      return view('/pokemonEspecifico',compact('pokemon','tipos','pokemons'));
   }
}