<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Route::get('/home', function () {
//    return view('welcome');
//});

//Route::get('/ejemplo', 'usuariosController@ejemplo');

Route::get('/', 'principalController@index');

Route::get('/home', 'principalController@home');

Route::get('/pokedex', 'principalController@pokedex');

Route::get('/tipos', 'tiposController@mostrarTipos');

Route::get('/tipos/{id}', 'tiposController@mostrarPokemon');

Route::get('/pdfPokemon/{id}', 'pokemonController@pdfPokemon');

Route::get('/darPoder/{idp}', 'pokemonController@darPoder');

Route::get('/darPoder/{idp}/{idt}', 'pokemonController@darPoder2');