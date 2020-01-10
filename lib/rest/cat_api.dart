import 'dart:convert';

import 'package:hello_world_flutter/models/cat_model.dart';
import 'package:http/http.dart' as http;

class CatAPI {
  static final String randomCatUrl = 'https://aws.random.cat/meow';
  static Future<Cat> getRandomCat() async {
    var response = await http.get((randomCatUrl));

    if (response.statusCode != 200) {
      print(response);
      return null;
    }
    return Cat.fromJSON(jsonDecode(response.body));
  }
}
