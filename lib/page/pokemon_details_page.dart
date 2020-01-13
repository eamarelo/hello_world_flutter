import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/models/pokemon_model.dart';

class PokemonDetailsPage extends StatelessWidget {
  final PokemonCard pokemon;
  bool _isLoading = false;

  PokemonDetailsPage(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: _buildDependingOnContext(),
    );
  }

  Widget _buildDependingOnContext() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                pokemon.attacks.length == 0
                    ? 'Attack nul'
                    : pokemon.attacks.toString(),
                style: TextStyle(color: Colors.brown),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(pokemon.weakness.length == 0
                  ? 'Weaknesses nul'
                  : pokemon.weakness.toString()),
            ],
          ),
          Row(
            children: <Widget>[
              Text(pokemon.type.length == 0
                  ? 'types nul'
                  : pokemon.type.toString()),
            ],
          ),
          Row(
            children: <Widget>[
              Text(pokemon.resistance.length == 0
                  ? 'resistance nul'
                  : pokemon.resistance.toString()),
            ],
          ),
          Row(
            children: <Widget>[Text(pokemon.series)],
          ),
          Row(
            children: <Widget>[Text(pokemon.set)],
          ),
          Row(
            children: <Widget>[
              CachedNetworkImage(imageUrl: pokemon.imageURL),
            ],
          ),
        ],
      );
    }
  }
}
