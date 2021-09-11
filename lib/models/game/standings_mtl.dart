class StandingsMtl {
  StandingsMtl({
    required this.divisionRank,
    required this.leagueRank,
  });

  String divisionRank;
  String leagueRank;

  factory StandingsMtl.fromJson(Map<String, dynamic> json) => StandingsMtl(
        divisionRank: json["divisionRank"],
        leagueRank: json["leagueRank"],
      );
}
