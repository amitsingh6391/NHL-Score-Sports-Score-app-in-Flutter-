import 'package:flutter_screenutil/flutter_screenutil.dart';

String ApiUrl = "https://nhl-score-api.herokuapp.com/api/scores/latest";
double leftPadding = ScreenUtil().setWidth(25);

double rightpadding = ScreenUtil().setWidth(25);
double bottomPadding = ScreenUtil().setHeight(15);
double topPadding1 = ScreenUtil().setHeight(50);
double toppadding = ScreenUtil().setHeight(18);

String canada = "assets/images/canada.png";

String Tampa = "assets/images/tampa.jpg";

String splashLogo = "assets/images/69767-olympics-sports-torch.json";

String networkError = "assets/images/39620-404-network.json";

Map<String, Object> intialJson = {
  "date": {"raw": "2021-07-07", "pretty": "Wed Jul 7"},
  "games": [
    {
      "status": {"state": "FINAL"},
      "startTime": "2021-07-08T00:00:00Z",
      "goals": [
        {
          "team": "TBL",
          "period": "2",
          "scorer": {"player": "Ross Colton", "seasonTotal": 4},
          "assists": [
            {"player": "David Savard", "seasonTotal": 5},
            {"player": "Ryan McDonagh", "seasonTotal": 8}
          ],
          "min": 13,
          "sec": 27
        }
      ],
      "scores": {"MTL": 0, "TBL": 1},
      "teams": {
        "away": {
          "abbreviation": "MTL",
          "id": 8,
          "locationName": "Montr\u00e9al",
          "shortName": "Montr\u00e9al",
          "teamName": "Canadiens"
        },
        "home": {
          "abbreviation": "TBL",
          "id": 14,
          "locationName": "Tampa Bay",
          "shortName": "Tampa Bay",
          "teamName": "Lightning"
        }
      },
      "preGameStats": {
        "records": {
          "TBL": {"wins": 15, "losses": 7},
          "MTL": {"wins": 13, "losses": 8}
        },
        "standings": {
          "MTL": {"divisionRank": "4", "leagueRank": "18"},
          "TBL": {"divisionRank": "3", "leagueRank": "8"}
        },
        "playoffSeries": {
          "round": 4,
          "wins": {"MTL": 1, "TBL": 3}
        }
      },
      "currentStats": {
        "records": {
          "MTL": {"wins": 13, "losses": 9},
          "TBL": {"wins": 16, "losses": 7}
        },
        "standings": {
          "MTL": {"divisionRank": "4", "leagueRank": "18"},
          "TBL": {"divisionRank": "3", "leagueRank": "8"}
        },
        "playoffSeries": {
          "round": 4,
          "wins": {"MTL": 1, "TBL": 4}
        }
      }
    }
  ]
};
