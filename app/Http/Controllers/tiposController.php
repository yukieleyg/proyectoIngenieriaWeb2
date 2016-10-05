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
    	
        $pokemon = DB::table('pokemon AS P')->join('pokemon_tipos AS PT', 'P.id', '=', 'PT.id_pokemon')->join('tipos AS T', 'T.id', '=', 'PT.id_tipo')->where('T.id', '=', $id)->select('P.id', 'P.nombre', 'P.altura', 'P.peso', 'P.descripcion', 'P.foto')->paginate(10);

    	return view('/tipos', compact('pokemon', 'tipos', 'tipo'));
    }
}
