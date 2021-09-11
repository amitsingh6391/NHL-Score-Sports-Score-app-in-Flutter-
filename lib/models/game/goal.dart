import 'scorer.dart';

class Goal {
  Goal({
    required this.team,
    required this.period,
    required this.scorer,
    required this.assists,
    required this.min,
    required this.sec,
  });

  String team;
  String period;
  Scorer scorer;
  List<Scorer> assists;
  int min;
  int sec;

  factory Goal.fromJson(Map<String, dynamic> json) => Goal(
        team: json["team"],
        period: json["period"],
        scorer: Scorer.fromJson(json["scorer"]),
        assists:
            List<Scorer>.from(json["assists"].map((x) => Scorer.fromJson(x))),
        min: json["min"],
        sec: json["sec"],
      );
}
