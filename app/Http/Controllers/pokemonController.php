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
    public function darPoder($id, Request $valores){
    	$pokemon = pokemon::find($id);
    	$pokemon->ataque += 1;
    	$pokemon->save();
        return back()->withInput();

    }
    public function darPoder2($idp, $idt){
    	$poke = pokemon::find($idp);
    	$poke->ataque += 1;
    	$poke->save();
    	$tipos = tipos::all();
    	$tipo = tipos::find($idt);
    	$nombre = $tipo->nombre;
        return back()->withInput();
    }
}
