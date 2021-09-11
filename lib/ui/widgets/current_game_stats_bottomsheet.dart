import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sports/models/game/game.dart';

import 'package:sports/ui/theme/apptheme.dart';

currentGameStatsBottomSheet(context, Game gameStats) async {
  ScreenUtil.init(
    BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height),
  );
  showCupertinoModalBottomSheet(
    expand: false,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50.0),
        topRight: Radius.circular(50),
      ),
    ),
    backgroundColor: Apptheme.backgroundColor,
    // Colors.white,
    builder: (context) => Container(
      height: .65.sh,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: CircleAvatar(
                backgroundColor: Apptheme.cardColorlight,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Apptheme.cardDarkColor,
                      size: 23.h,
                    )),
              ),
            ),
            Container(
              child: Text(
                "Current Records",
                style: Apptheme(context).boldText.copyWith(
                      fontSize: 15.sp,
                      decoration: TextDecoration.none,
                    ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${gameStats.teams.away.shortName}  (${gameStats.teams.away.abbreviation})",
                  style: Apptheme(context).lightText.copyWith(
                      fontSize: 15.sp, decoration: TextDecoration.none),
                ),
                SizedBox(
                  width: .25.sw,
                ),
                Text(
                  "${gameStats.teams.home.shortName}  (${gameStats.teams.home.abbreviation})",
                  style: Apptheme(context).lightText.copyWith(
                      fontSize: 15.sp, decoration: TextDecoration.none),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  gameStats.currentStats.records.mtl.wins.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
                Text(
                  "Wins",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 17.sp,
                        decoration: TextDecoration.none,
                        color: Apptheme.cardDarkColor,
                      ),
                ),
                Spacer(),
                Text(
                  gameStats.currentStats.records.tbl.wins.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  gameStats.currentStats.records.mtl.losses.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
                Text(
                  "Losses",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 17.sp,
                        decoration: TextDecoration.none,
                        color: Apptheme.cardDarkColor,
                      ),
                ),
                Spacer(),
                Text(
                  gameStats.currentStats.records.tbl.losses.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: Text(
                "Standings",
                style: Apptheme(context).boldText.copyWith(
                      fontSize: 17.sp,
                      decoration: TextDecoration.none,
                    ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  gameStats.currentStats.standings.mtl.divisionRank.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
                Text(
                  "DivisionRank",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 17.sp,
                        decoration: TextDecoration.none,
                        color: Apptheme.cardDarkColor,
                      ),
                ),
                Spacer(),
                Text(
                  gameStats.currentStats.standings.tbl.divisionRank.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  gameStats.currentStats.standings.mtl.leagueRank.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
                Text(
                  "LeagueRank",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 17.sp,
                        decoration: TextDecoration.none,
                        color: Apptheme.cardDarkColor,
                      ),
                ),
                Spacer(),
                Text(
                  gameStats.currentStats.standings.tbl.leagueRank.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "PlayOfSeries",
              style: Apptheme(context).boldText.copyWith(
                    fontSize: 17.sp,
                    decoration: TextDecoration.none,
                  ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Round ${gameStats.currentStats.playoffSeries.round}",
              style: Apptheme(context).boldText.copyWith(
                    fontSize: 13.sp,
                    decoration: TextDecoration.none,
                    // color: Apptheme.cardDarkColor,
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  gameStats.currentStats.playoffSeries.wins.mtl.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
                Text(
                  "Wins",
                  style: Apptheme(context).boldText.copyWith(
                        fontSize: 17.sp,
                        decoration: TextDecoration.none,
                        color: Apptheme.cardDarkColor,
                      ),
                ),
                Spacer(),
                Text(
                  gameStats.currentStats.playoffSeries.wins.tbl.toString(),
                  style: Apptheme(context).lightText.copyWith(
                        fontSize: 15.sp,
                        decoration: TextDecoration.none,
                      ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    ),
  );
}
