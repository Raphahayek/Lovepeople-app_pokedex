import 'package:app_pokedex_mvp/view/detail/detailpage.dart';
import 'package:flutter/material.dart';
import '../../model/pokemon.dart';

class PokemonWidget extends StatelessWidget {
  final Pokemon item;
  const PokemonWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void redirectToNewPage() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PokeDetailPage(
            pokemon: item,
          ),
        ),
      );
    }

    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Text(item.name),
        trailing: Text('# ${item.number}'),
        leading: Image.network(item.thumbnailImage),
        onTap: () {
          redirectToNewPage();
        },
      ),
    );
  }
}
