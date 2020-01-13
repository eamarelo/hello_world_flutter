class PokemonCard {
  String id;
  String imageURL;
  String name;
  List<String> attacks = [];
  List<String> weakness = [];
  List<String> type = [];
  List<String> resistance = [];
  String series;
  String set;

  PokemonCard(this.id, this.imageURL, this.name, this.attacks, this.weakness,
      this.type, this.series, this.set, this.resistance);

  PokemonCard.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageUrl'];
    series = json['series'];
    set = json['set'];

    List<dynamic> attacksJSON = json['attacks'] ?? [];
    for (dynamic attackJSON in attacksJSON) {
      attacks.add(attackJSON['name']);
    }

    List<dynamic> weaknessesJSON = json['weaknesses'] ?? [];
    for (dynamic weaknessJSON in weaknessesJSON) {
      weakness.add(weaknessJSON['type']);
    }

    List<dynamic> typesJSON = json['types'] ?? [];
    for (dynamic typeJSON in typesJSON) {
      type.add(typeJSON);
    }

    List<dynamic> resistancesJSON = json['resistances'] ?? [];
    for (dynamic resistanceJSON in resistancesJSON) {
      resistance.add(resistanceJSON['type']);
    }

//    weakness = json['weaknesses'];

//    resistance = json['resistances'];
  }

  @override
  String toString() {
    return 'PokemonCard{id: $id, imageURL: $imageURL, name: $name, attacks: $attacks, weakness: $weakness, type: $type, resistance: $resistance, series: $series, set: $set}';
  }
}
