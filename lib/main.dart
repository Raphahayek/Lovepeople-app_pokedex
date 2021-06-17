import 'package:app_pokedex_mvp/model/pokemon_repository.dart';
import 'package:app_pokedex_mvp/presenter/home_controller.dart';
import 'package:app_pokedex_mvp/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(PokemonRepository()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
