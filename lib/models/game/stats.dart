import 'playoff_series.dart';
import 'record.dart';
import 'standing.dart';

class Stats {
  Stats({
    required this.records,
    required this.standings,
    required this.playoffSeries,
  });

  Records records;
  Standings standings;
  PlayoffSeries playoffSeries;

  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
        records: Records.fromJson(json["records"]),
        standings: Standings.fromJson(json["standings"]),
        playoffSeries: PlayoffSeries.fromJson(json["playoffSeries"]),
      );
}
