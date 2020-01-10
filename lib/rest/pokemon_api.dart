import 'dart:convert';

import 'package:hello_world_flutter/models/pokemon_model.dart';
import 'package:http/http.dart' as http;

class PokemonAPI {
  static final String pokemonApiUrl = 'https://api.pokemontcg.io/v1/cards';
  //    Map<String, dynamic> responseMap = jsonDecode(response.body);

  static Future<List<PokemonCard>> getPokemonCards() async {
    var response = await http.get((pokemonApiUrl));
    print('response' + response.body);

    if (response.statusCode != 200) {
      return null;
    }

    Map<String, dynamic> responseMap = jsonDecode(response.body);

    List<dynamic> cardsJson = responseMap['cards'];

    List<PokemonCard> cards = [];
    for (dynamic card in cardsJson) {
      print('this is a card' + cardsJson.toString());
      cards.add(PokemonCard.fromJSON(card));
    }
    return cards;
  }
}
