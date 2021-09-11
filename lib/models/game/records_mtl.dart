class RecordsMtl {
  RecordsMtl({
    required this.wins,
    required this.losses,
  });

  int wins;
  int losses;

  factory RecordsMtl.fromJson(Map<String, dynamic> json) => RecordsMtl(
        wins: json["wins"],
        losses: json["losses"],
      );
}
