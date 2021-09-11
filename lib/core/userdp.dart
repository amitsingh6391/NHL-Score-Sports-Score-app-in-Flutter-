import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sports/ui/theme/apptheme.dart';

class UserDp extends StatelessWidget {
  final double height;
  final double width;

  final String image;

  UserDp({
    required this.height,
    required this.width,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Apptheme.backgroundColor,
      child: Center(
        child: Text(
          image.substring(0, 3),
          style: Apptheme(context).boldText.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
