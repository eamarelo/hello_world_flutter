class PokemonCard {
  String id;
  String imageURL;
  String name;
  List attacks;
  List weakness;
  List type;
  String series;
  String set;
  List resistance;

  PokemonCard(this.id, this.imageURL, this.name, this.attacks, this.weakness,
      this.type, this.series, this.set, this.resistance);

  PokemonCard.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageUrl'];
    attacks = json['attacks'];
    weakness = json['weaknesses'];
    type = json['types'];
    series = json['series'];
    set = json['set'];
    resistance = json['resistances'];
  }

  @override
  String toString() {
    return 'PokemonCards{id: $id, imageURL: $imageURL, name: $name}';
  }
}
