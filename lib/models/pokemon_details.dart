class PokemonDetails {
  final String attacks;
  final String weakness;
  final String type;
  final String series;
  final String set;
  final String resistance;

  PokemonDetails(this.attacks, this.weakness, this.type, this.series, this.set,
      this.resistance);

  @override
  String toString() {
    return 'PokemonDetails{attacks: $attacks, weakness: $weakness, type: $type, series: $series, set: $set, resistance: $resistance}';
  }
}
