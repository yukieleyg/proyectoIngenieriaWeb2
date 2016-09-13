<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class usuariosController extends Controller
{
    //
    public function ejemplo(){
    	$nombre = "Jorge";
    	return view('welcome', compact('nombre'));
    }
}
