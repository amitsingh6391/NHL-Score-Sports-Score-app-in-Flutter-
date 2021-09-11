import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sports/core/userdp.dart';
import 'package:sports/models/game/scorer.dart';
import 'package:sports/ui/theme/apptheme.dart';

class AssitsDetailsPopup extends StatelessWidget {
  AssitsDetailsPopup({
    required this.assistPlayers,
    Key? key,
  }) : super(key: key);

  final List<Scorer> assistPlayers;

  @override
  Widget build(
    BuildContext context,
  ) {
    Size size = MediaQuery.of(context).size;
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
    );
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: size.height > 570 ? 380 : 450,
        margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 25,
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    // AutoRouter.of(context).pop();
                  },
                  child: CircleAvatar(
                    backgroundColor: Apptheme.cardColorlight,
                    child: Icon(
                      Icons.close,
                      color: Apptheme.cardDarkColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                "Assists Players !",
                textAlign: TextAlign.center,
                style: Apptheme(context).boldText.copyWith(
                      fontSize: 20.sp,
                      color: Apptheme.cardDarkColor,
                      decoration: TextDecoration.none,
                    ),
              ),
            ),
            SizedBox(height: 10.h),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 10.h, 10.w, 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomRight: Radius.circular(50),
                            ),
                            color: Apptheme.goalsCardColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8.h, 8.h, 8.h, 8.h),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),

                                UserDp(
                                  height: size.width > 330 ? 50 : 40,
                                  width: size.width > 330 ? 50 : 40,
                                  image: assistPlayers[index].player,
                                ),
                                SizedBox(
                                  width: .08.sw,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      assistPlayers[index].player,
                                      style: Apptheme(context)
                                          .boldText
                                          .copyWith(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      assistPlayers[index]
                                          .seasonTotal
                                          .toString(),
                                      style:
                                          Apptheme(context).normalText.copyWith(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w900,
                                                decoration: TextDecoration.none,
                                              ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 0.2.sw,
                                ),
                                // Spacer(),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: assistPlayers.length,
            ),
          ],
        ),
      ),
    );
  }
}
