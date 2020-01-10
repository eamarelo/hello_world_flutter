import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/models/cat_model.dart';
import 'package:hello_world_flutter/rest/cat_api.dart';

class RandomCatRestPage extends StatefulWidget {
  @override
  _RandomCatRestPageState createState() => _RandomCatRestPageState();
}

class _RandomCatRestPageState extends State<RandomCatRestPage> {
//  String _responseStr = '';

  Cat _currentCat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RanDom Cat'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: _refreshPressed,
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: CachedNetworkImage(
            imageUrl: _currentCat.imageURL,
            placeholder: (context, url) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 48, width: 48, child: CircularProgressIndicator()),
              ],
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          )),
          Spacer(),
          Row(
            children: <Widget>[
              _currentCat == null
                  ? Container()
                  : Expanded(
                      child: Text(
                      _currentCat.imageURL,
                      style: TextStyle(fontSize: 24),
                    ))
            ],
          )
        ],
      ),
    );
  }

  _refreshPressed() async {
    print('refresh pressed');
//    String url = 'https://aws.random.cat/meow';
//    var response = await http.get(url);
//    print('response' + response.body);
//
//    setState(() {
//      _responseStr = response.body;
//    });
//
//    //PARSE JSON ?
//
//    Map<String, dynamic> responseMap = jsonDecode(response.body);
//    print('responseMap ' + responseMap.toString());
//    print('cat url ' + responseMap['file']);

    CatAPI.getRandomCat().then((cat) {});

    Cat cat = await CatAPI.getRandomCat();

    setState(() {
      _currentCat = cat;
    });
  }
}
