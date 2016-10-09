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
   		//$pokemons = pokemon::all();
         $pokemons = DB::table('pokemon')->paginate(10);
         $tipos = tipos::all();
         //$page = currentPage();
         //dd($page);
         //$total = sum('select * from tipos');
   		return view('/pokedex', compact('pokemons', 'tipos','page'));
   }
}
