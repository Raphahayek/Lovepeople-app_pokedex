import 'package:app_pokedex_mvp/model/pokemon.dart';
import 'package:flutter/material.dart';
import '../model/pokemon_repository.dart';

class HomeController extends ChangeNotifier {
  final PokemonRepository _repository;

  HomeController(this._repository, {MaterialApp child});

  List<Pokemon> pokemonList = [];
  bool loading = false;

  void loadPokemon() {
    _repository.load().then((value) {
      pokemonList = value;
      notifyListeners();
    });
  }
}
