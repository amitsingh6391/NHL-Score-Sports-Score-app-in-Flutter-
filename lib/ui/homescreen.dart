import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sports/providers/sports_data_provider.dart';
import 'package:sports/ui/widgets/current_stats.dart';
import 'package:sports/ui/widgets/pregame_stats.dart';
import 'package:sports/utils/constants.dart';

import 'theme/apptheme.dart';
import 'widgets/match_details.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final sportDataWatcher = watch(sportsDataProvider);

    sportDataWatcher.checkConnectivity();

    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
    );

    return sportDataWatcher.networkBool
        ? Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                  child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color: Apptheme.cardColorlight,
                        ),
                      ),
                      Positioned(
                        top: 50.h,
                        left: 20.h,
                        child: IconButton(
                          onPressed: () {
                            exit(0);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Apptheme.cardDarkColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90.h,
                        left: .2.sw,
                        child: Text(
                          "NHL Champions League",
                          style: Apptheme(context).boldText.copyWith(
                                color: Apptheme.assentColor,
                                fontSize: 20.sp,
                              ),
                        ),
                      ),
                      Positioned(
                        top: 125.h,
                        left: .35.sw,
                        child: Text(
                          "Match  :   ${sportDataWatcher.sportData.games.first.status.state}",
                          style: Apptheme(context).boldText.copyWith(
                                color: Apptheme.lightColor,
                                fontSize: 15.sp,
                              ),
                        ),
                      ),
                      Positioned(
                        top: 160.h,
                        left: .05.sw,
                        child: Container(
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 35.r,
                                    backgroundImage: AssetImage(
                                      canada,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "${sportDataWatcher.sportData.games.first.teams.away.shortName}",
                                    style: Apptheme(context).boldText.copyWith(
                                          color: Apptheme.lightColor,
                                          fontSize: 15.sp,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(width: .12.sw),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${sportDataWatcher.sportData.date.raw.toString().substring(0, 10)}",
                                    style: Apptheme(context).boldText.copyWith(
                                          color: Apptheme.assentColor,
                                          fontSize: 15.sp,
                                        ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "${sportDataWatcher.sportData.date.pretty}",
                                    style: Apptheme(context).boldText.copyWith(
                                          color: Apptheme.lightColor,
                                          fontSize: 15.sp,
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(width: .1.sw),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 35.r,
                                    backgroundImage: AssetImage(
                                      Tampa,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "${sportDataWatcher.sportData.games.first.teams.home.shortName}",
                                    style: Apptheme(context).boldText.copyWith(
                                          color: Apptheme.lightColor,
                                          fontSize: 15.sp,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 250.h,
                        left: .42.sw,
                        child: Text(
                          '''${sportDataWatcher.sportData.games.first.scores.mtl} - ${sportDataWatcher.sportData.games.first.scores.tbl}''',
                          style: Apptheme(context).boldText.copyWith(
                                color: Apptheme.assentColor,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  MatchDetails(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      PregameStatsWidget(),
                      Spacer(),
                      PlayOffSeriesWidget(),
                      Spacer()
                    ],
                  ),
                  SizedBox(height: .1.sh),
                ],
              )),
            ),
          )
        : Scaffold(
            body: Center(
              child: Lottie.asset(networkError),
            ),
          );
    // : Center(Container(
    //     color: Apptheme.backgroundColor,
    //     child: Lottie.asset(networkError),
    //   ));
  }
}
