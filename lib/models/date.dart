class Date {
  Date({
    required this.raw,
    required this.pretty,
  });

  DateTime raw;
  String pretty;

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        raw: DateTime.parse(json["raw"]),
        pretty: json["pretty"],
      );

  Map<String, dynamic> toJson() => {
        "raw":
            "${raw.year.toString().padLeft(4, '0')}-${raw.month.toString().padLeft(2, '0')}-${raw.day.toString().padLeft(2, '0')}",
        "pretty": pretty,
      };
}
