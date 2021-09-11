import 'dart:convert';

import 'date.dart';
import 'game/game.dart';

class SportData {
  SportData({
    required this.date,
    required this.games,
  });

  Date date;
  List<Game> games;

  factory SportData.fromJson(Map<String, dynamic> json) => SportData(
        date: Date.fromJson(json["date"]),
        games: List<Game>.from(json["games"].map((x) => Game.fromJson(x))),
      );
}
