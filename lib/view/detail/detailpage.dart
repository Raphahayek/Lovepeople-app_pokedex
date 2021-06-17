import 'package:app_pokedex_mvp/model/pokemon.dart';
import 'package:flutter/material.dart';

class PokeDetailPage extends StatelessWidget {
  final Pokemon pokemon;

  const PokeDetailPage({Key key, this.pokemon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text('#${pokemon.number}'),
                              ),
                            ),
                            Image.network(
                              pokemon.thumbnailImage,
                              height: 250,
                              width: 150,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(pokemon.description),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Tipo:',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        pokemon.type
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', '')
                            .replaceAll(',', '')
                            .replaceAll(',', ''),
                        style: TextStyle(fontSize: 14),
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Fraquezas:',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        pokemon.weakness
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', '')
                            .replaceAll(',', '')
                            .replaceAll(',', ''),
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
