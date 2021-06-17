import 'package:app_pokedex_mvp/presenter/home_controller.dart';
import 'package:app_pokedex_mvp/view/home/widgets/pokemon_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    context.read<HomeController>().loadPokemon();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(right: 250),
                child: Text('Pokedex')),
            Image.network(
              'https://raw.githubusercontent.com/RafaelBarbosatec/SimplePokedex/master/assets/pokebola_img.png',
              height: 30,
            ),
          ],
        ),
      ),
      body: Consumer<HomeController>(
        builder: (_, controller, child) {
          return ListView.builder(
            itemCount: controller.pokemonList.length,
            itemBuilder: (context, index) {
              return PokemonWidget(item: controller.pokemonList[index]);
            },
          );
        },
      ),
    );
  }
}
