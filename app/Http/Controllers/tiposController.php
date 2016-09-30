<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tipos;
use App\pokemon;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;

class tiposController extends Controller
{
    public function mostrarTipos(){
    	$tipos = tipos::all();
    	$pokemon = pokemon::all();
    	return view('/tipos', compact('tipos', 'pokemon'));
    }
    public function mostrarPokemon($id){
    	$tipo = tipos::find($id);
    	$tipos = tipos::all();
    	$pokemon = DB::select('select P.id,P.nombre,P.altura,P.peso,P.descripcion,P.foto from pokemon P inner join pokemon_tipos PT inner join tipos T where P.id = PT.id_pokemon and PT.id_tipo = T.id and T.id = ?', [$id]);
    	return view('/tipos', compact('pokemon', 'tipos', 'tipo'));
    }
}
