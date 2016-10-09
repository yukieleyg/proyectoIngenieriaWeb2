<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\pokemon;
use App\tipos;
use App\Http\Requests;
use DB;

class pokemonController extends Controller
{
    public function pdfPokemon($id){
    	$pokemon = pokemon::find($id);
        $vista = view('/pdfPokemon', compact('pokemon'));
        $dompdf = \App::make('dompdf.wrapper');
        $dompdf->loadHTML($vista);
        return $dompdf->stream();
    }
    public function darPoder($id){
    	$pokemon = pokemon::find($id);
    	$pokemon->ataque += 1;
    	$pokemon->save();
    	return Redirect('/pokedex');
    }
    public function aumentarPoder($idp, $idt){
    	$poke = pokemon::find($idp);
    	$poke->ataque += 1;
    	$poke->save();

    	//$tipos = tipos::all();
    	//$tipo = tipos::find($idt);
    	//$nombre = $tipo->nombre;

    	//$pokemon = DB::table('pokemon AS P')->join('pokemon_tipos AS PT', 'P.id', '=', 'PT.id_pokemon')->join('tipos AS T', 'T.id', '=', 'PT.id_tipo')->where('T.id', '=', $idt)->select('P.id', 'P.nombre', 'P.altura', 'P.peso', 'P.ataque','P.descripcion', 'P.foto')->paginate(10);

    	//return Redirect('/tipos/'.$idt, compact('pokemon', 'tipos', 'tipo'));
        return Redirect('/tipos/'.$idt);
    }
}
