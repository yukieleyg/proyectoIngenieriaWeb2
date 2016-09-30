<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tipos;
use App\pokemon;
use App\Http\Requests;
use App\Http\Controllers\Controller;

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
   		$pokemons = pokemon::all();
         $tipos = tipos::all();
         //$total = sum('select * from tipos');
   		return view('/pokedex', compact('pokemons', 'tipos'));
   }
}
