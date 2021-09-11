class Scorer {
  Scorer({
    required this.player,
    required this.seasonTotal,
  });

  String player;
  int seasonTotal;

  factory Scorer.fromJson(Map<String, dynamic> json) => Scorer(
        player: json["player"],
        seasonTotal: json["seasonTotal"],
      );
}
