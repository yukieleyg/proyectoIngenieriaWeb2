<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class principalController extends Controller
{
   public function index(){
   		return view('principal');
   }
   public function home(){
   		return view('inicio');
   }
   public function pokedex(){
   		$pokemons = DB::select('select * from pokemon');
   		return view('pokedex')->with('pokemons', $pokemons);
   }
}
