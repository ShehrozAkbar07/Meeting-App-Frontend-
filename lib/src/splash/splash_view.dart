import 'dart:async';

import 'package:flutter/material.dart';
import '../../common/utils/asset_names.dart';
import '../../common/utils/dimension.dart';
import '../auth/login/login_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String route = "/";

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  String splashImage = "splash1";
  late AnimatedSwitcher animatedSwitcher;

  startTime() async {
    Duration duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void changeSplashImage() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        splashImage = "splash2";
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        splashImage = "splash3";
      });
    });
  }

  void navigationPage() {
    // SharedPreferences.getInstance().then((value) {
    //   if (value.containsKey('userId')) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    // } else {
    // Navigator.pushReplacement(context,
    //     MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    // }
    // });
  }

  @override
  void initState() {
    super.initState();
    // changeSplashImage();
    animatedSwitcher = const AnimatedSwitcher(duration: Duration(seconds: 2));
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFCFF),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/images/background.jpeg",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/splashlogo.png",
                // width: Dimens.width10,
                // height: Dimens.height10,
                width: animation.value * 200,
                height: animation.value * 200,
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       left: Dimens.width8, bottom: Dimens.height2),
              //   child:
              // ),

              SizedBox(
                height: Dimens.height12,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                "2022 Meet Safe LLC",
                style: TextStyle(
                  color: const Color(0xffFFFFFF).withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
