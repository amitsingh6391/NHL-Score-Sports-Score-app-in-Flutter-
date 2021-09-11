import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sports/providers/sports_data_provider.dart';

import 'package:sports/ui/homescreen.dart';

import 'package:lottie/lottie.dart';
import 'package:sports/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read(sportsDataProvider).checkConnectivity();
    startTime();
  }

  Future<void> startTime() async {
    const _duration = Duration(seconds: 4);
    Timer(_duration, navigationPage);
  }

  navigationPage() async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, watch, Widget? child) {
        final sportDataWatcher = watch(sportsDataProvider);

        sportDataWatcher.getSportsData();
        return Scaffold(
          body: Center(
            child: Lottie.asset(splashLogo),

            // Lottie.network(

            //     "https://assets4.lottiefiles.com/packages/lf20_0hxkpskc.json"),

            // Lottie.network(splashLogo),
          ),
        );
      },
    );
  }
}
