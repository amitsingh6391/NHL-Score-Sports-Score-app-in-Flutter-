import 'package:sports/models/game/score.dart';

class PlayoffSeries {
  PlayoffSeries({
    required this.round,
    required this.wins,
  });

  int round;
  Scores wins;

  factory PlayoffSeries.fromJson(Map<String, dynamic> json) => PlayoffSeries(
        round: json["round"],
        wins: Scores.fromJson(json["wins"]),
      );
}
