<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tipos;
use App\pokemon;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;

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
         $tipos = tipos::all();
   		return view('/pokedex', compact('pokemons', 'tipos','page'));
   }
   public function buscar(Request $request){
      $nombre  = $request->input('pokemon_input');
      $tipos   = tipos::all();
      $pokemon = DB::table('pokemon AS P')->where('P.nombre', '=', $nombre)->select('P.id', 'P.nombre', 'P.altura', 'P.peso', 'P.ataque', 'P.descripcion', 'P.foto')->get();      foreach ($pokemon as $p) {
          return view('/mostrarPokemon',compact('tipos','p'));            
      }
      return view('/pokedex');
   }
   public function pokemonEspecifico($id){
      $pokemon = pokemon::find($id);
      $tipos   = tipos::all();
      return view('/pokemonEspecifico',compact('pokemon','tipos'));
   }
}
