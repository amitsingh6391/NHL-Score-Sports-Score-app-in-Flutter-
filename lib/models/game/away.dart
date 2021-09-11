class Away {
  Away({
    required this.abbreviation,
    required this.id,
    required this.locationName,
    required this.shortName,
    required this.teamName,
  });

  String abbreviation;
  int id;
  String locationName;
  String shortName;
  String teamName;

  factory Away.fromJson(Map<String, dynamic> json) => Away(
        abbreviation: json["abbreviation"],
        id: json["id"],
        locationName: json["locationName"],
        shortName: json["shortName"],
        teamName: json["teamName"],
      );
}
