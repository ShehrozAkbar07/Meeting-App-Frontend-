
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safe_meet_alert/src/splash/splash_view.dart';

import 'common/utils/apptheme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SafeMeetAlerts',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
