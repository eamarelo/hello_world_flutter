class PokemonCard {
  String id;
  String imageURL;
  String name;
  String attacks;
  String weakness;
  String type;
  String series;
  String set;
  String resistance;

  PokemonCard(this.id, this.imageURL, this.name, this.attacks, this.weakness,
      this.type, this.series, this.set, this.resistance);

  PokemonCard.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageUrl'];
  }

  @override
  String toString() {
    return 'PokemonCards{id: $id, imageURL: $imageURL, name: $name}';
  }
}
