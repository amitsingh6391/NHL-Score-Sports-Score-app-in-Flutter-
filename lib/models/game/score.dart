class Scores {
  Scores({
    required this.mtl,
    required this.tbl,
  });

  int mtl;
  int tbl;

  factory Scores.fromJson(Map<String, dynamic> json) => Scores(
        mtl: json["MTL"],
        tbl: json["TBL"],
      );
}
