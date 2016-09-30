<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\pokemon;
use App\Http\Requests;

class pokemonController extends Controller
{
    public function pdfPokemon($id){
    	$pokemon = pokemon::find($id);
        $vista = view('/pdfPokemon', compact('pokemon'));
        $dompdf = \App::make('dompdf.wrapper');
        $dompdf->loadHTML($vista);
        return $dompdf->stream();
    }
}
