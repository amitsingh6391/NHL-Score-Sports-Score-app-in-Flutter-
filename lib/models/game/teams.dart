import 'away.dart';

class Teams {
  Teams({
    required this.away,
    required this.home,
  });

  Away away;
  Away home;

  factory Teams.fromJson(Map<String, dynamic> json) => Teams(
        away: Away.fromJson(json["away"]),
        home: Away.fromJson(json["home"]),
      );
}
