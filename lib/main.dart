import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui/splash/splash_screen.dart';
import 'ui/theme/apptheme.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Apptheme.cardColorlight,
    systemNavigationBarColor: Apptheme.backgroundColor,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: SportsApp(),
    ),
  );
}

class SportsApp extends StatelessWidget {
  const SportsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.theme,
      title: "SportsApp",
      home: SplashScreen(),
    );
  }
}
