import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/models/pokemon_model.dart';
import 'package:hello_world_flutter/page/pokemon_details_page.dart';
import 'package:hello_world_flutter/rest/pokemon_api.dart';

class PokemonListPage extends StatefulWidget {
  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  bool _isLoading = false;
  List<PokemonCard> _cards = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokedex'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: _loadData,
              icon: Icon(Icons.refresh),
            )
          ],
        ),
        body: _buildDependingOnContext());
  }

  Widget _buildDependingOnContext() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
          itemCount: _cards.length,
          itemBuilder: (context, index) {
            PokemonCard card = _cards[index];
            return _buildPokemonItem(card);
          });
    }
  }

//  _refreshPressed() async {
//    print('refresh pressed');
////    String url = 'https://api.pokemontcg.io/v1/cards';
////    var response = await http.get(url);
////    print('response' + response.body);
////
////    setState(() {
////      _responseStr = response.body;
////    });
//
//    //PARSE JSON ?
//
////    Map<String, dynamic> responseMap = jsonDecode(response.body);
////    print('responseMap ' + responseMap.toString());
////    print('cat url ' + responseMap['file']);
//
//    PokemonAPI.getPokemonCards().then((cat) {});
//
//    List pokemon = await PokemonAPI.getPokemonCards();
//  }

  Widget _buildPokemonItem(PokemonCard card) {
    return Center(
      child: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CachedNetworkImage(imageUrl: card.imageURL),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Colors.blue,
            child: Row(
              children: <Widget>[
                Text(
                  card.name,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            onPressed: () {
              print('RandomCat');
              _goTodetailsPage(card);
            },
          ),
        ),
      ]),
    );
  }

  _loadData() async {
    _isLoading = true;

    List<PokemonCard> cards = await PokemonAPI.getPokemonCards();

    setState(() {
      _cards = cards;
      _isLoading = false;
    });
  }

  _goTodetailsPage(PokemonCard card) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PokemonDetailsPage(card);
    }));
  }
}
