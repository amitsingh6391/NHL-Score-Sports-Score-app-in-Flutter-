import 'goal.dart';
import 'score.dart';
import 'stats.dart';
import 'status.dart';
import 'teams.dart';

class Game {
  Game({
    required this.status,
    required this.startTime,
    required this.goals,
    required this.scores,
    required this.teams,
    required this.preGameStats,
    required this.currentStats,
  });

  Status status;
  DateTime startTime;
  List<Goal> goals;
  Scores scores;
  Teams teams;
  Stats preGameStats;
  Stats currentStats;

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        status: Status.fromJson(json["status"]),
        startTime: DateTime.parse(json["startTime"]),
        goals: List<Goal>.from(json["goals"].map((x) => Goal.fromJson(x))),
        scores: Scores.fromJson(json["scores"]),
        teams: Teams.fromJson(json["teams"]),
        preGameStats: Stats.fromJson(json["preGameStats"]),
        currentStats: Stats.fromJson(json["currentStats"]),
      );
}
