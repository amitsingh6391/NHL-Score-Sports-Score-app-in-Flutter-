import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sports/providers/sports_data_provider.dart';
import 'package:sports/ui/theme/apptheme.dart';
import 'package:sports/utils/constants.dart';

import 'assits_pop_up.dart';

class MatchDetails extends ConsumerWidget {
  const MatchDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final sportDataWatcher = watch(sportsDataProvider);
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
    );

    return Container(
      width: 1.sw,
      child: Column(
        children: [
          Text(
            "Goals",
            style: Apptheme(context).boldText.copyWith(
                  fontSize: 20.sp,
                ),
          ),
          SizedBox(height: 10.h),
          AnimatedList(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index, animation) {
              return Padding(
                padding: EdgeInsets.only(
                  right: .08.sw,
                  bottom: .03.sh,
                ),
                child: Container(
                  height: .27.sh,
                  width: .1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Apptheme.goalsCardColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: leftPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 5.h),
                        Text(
                          "Period : ${sportDataWatcher.sportData.games.first.goals[index].period}",
                          style: Apptheme(context).boldText.copyWith(
                                color: Apptheme.lightColor,
                                fontSize: 17.sp,
                              ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 25.r,
                                  backgroundImage: AssetImage(
                                    Tampa,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "${sportDataWatcher.sportData.games.first.goals[index].team}",
                                  style: Apptheme(context).boldText.copyWith(
                                        color: Apptheme.assentColor,
                                        fontSize: 17.sp,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(width: .1.sw),
                            Column(
                              children: [
                                Text(
                                  "Time",
                                  style: Apptheme(context).boldText.copyWith(
                                        color: Apptheme.assentColor,
                                        fontSize: 17.sp,
                                      ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "  ${sportDataWatcher.sportData.games.first.goals[index].min}min :${sportDataWatcher.sportData.games.first.goals[index].sec}sec ",
                                  style: Apptheme(context).boldText.copyWith(
                                        color: Apptheme.lightColor,
                                        fontSize: 15.sp,
                                      ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    showGeneralDialog(
                                      barrierLabel: "Barrier",
                                      barrierDismissible: true,
                                      barrierColor:
                                          Colors.black.withOpacity(0.5),
                                      transitionDuration:
                                          Duration(milliseconds: 800),
                                      context: context,
                                      pageBuilder: (_, __, ___) {
                                        return AssitsDetailsPopup(
                                          assistPlayers: sportDataWatcher
                                              .sportData
                                              .games
                                              .first
                                              .goals[index]
                                              .assists,
                                        );
                                      },
                                      transitionBuilder: (_, anim, __, child) {
                                        return SlideTransition(
                                          position: Tween(
                                                  begin: Offset(-1, -1),
                                                  end: Offset(0, 0))
                                              .animate(anim),
                                          child: child,
                                        );
                                      },
                                    );
                                  },
                                  child: Text(
                                    "Assits",
                                    style: Apptheme(context).boldText.copyWith(
                                          fontSize: 15.sp,
                                        ),
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 25.r,
                                  backgroundColor: Apptheme.backgroundColor,
                                  child: Text(
                                    sportDataWatcher.sportData.games.first
                                        .goals[index].scorer.player
                                        .substring(0, 3),
                                    style: Apptheme(context).boldText.copyWith(
                                          color: Apptheme.assentColor,
                                          fontSize: 17.sp,
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Scorer",
                                  style: Apptheme(context).boldText.copyWith(
                                        color: Apptheme.assentColor,
                                        fontSize: 17.sp,
                                      ),
                                ),
                                Text(
                                  sportDataWatcher.sportData.games.first
                                      .goals[index].scorer.player,
                                  style: Apptheme(context).boldText.copyWith(
                                        color: Apptheme.lightColor,
                                        fontSize: 15.sp,
                                      ),
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "seasonTotal  : ${sportDataWatcher.sportData.games.first.goals[index].scorer.seasonTotal}",
                          style: Apptheme(context).boldText.copyWith(
                                color: Apptheme.lightColor,
                                fontSize: 15.sp,
                              ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              );
            },
            initialItemCount:
                sportDataWatcher.sportData.games.first.goals.length,
          ),
        ],
      ),
    );
  }
}
