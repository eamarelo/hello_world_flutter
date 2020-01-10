class PokemonCard {
  String id;
  String imageURL;
  String name;
  List<String> attacks = [];
  List<String> weakness = [];
  List<String> type = [];
  String series;
  String set;
  List<String> resistance = [];

  PokemonCard(this.id, this.imageURL, this.name, this.attacks, this.weakness,
      this.type, this.series, this.set, this.resistance);

  PokemonCard.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageUrl'];

    List<dynamic> attacksJSON = json['attacks'] ?? [];
    for (dynamic attackJSON in attacksJSON) {
      attacks.add(attackJSON['name']);
    }

//    weakness = json['weaknesses'];
//    type = json['types'];
//    series = json['series'];
    set = json['set'];
//    resistance = json['resistances'];
  }

  @override
  String toString() {
    return 'PokemonCards{id: $id, imageURL: $imageURL, name: $name}';
  }
}
