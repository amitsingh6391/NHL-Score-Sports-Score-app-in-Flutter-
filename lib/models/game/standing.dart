import 'standings_mtl.dart';

class Standings {
  Standings({
    required this.mtl,
    required this.tbl,
  });

  StandingsMtl mtl;
  StandingsMtl tbl;

  factory Standings.fromJson(Map<String, dynamic> json) => Standings(
        mtl: StandingsMtl.fromJson(json["MTL"]),
        tbl: StandingsMtl.fromJson(json["TBL"]),
      );
}
