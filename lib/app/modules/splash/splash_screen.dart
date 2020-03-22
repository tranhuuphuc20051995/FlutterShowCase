import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/app/routes/route_const.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer timer;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => onAfterBuild(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Splash',
          ),
        ),
      ),
    );
  }

  void onAfterBuild(BuildContext context) {
    startCountDown(context);
  }

  void startCountDown(BuildContext context) {
    timer = Timer(Duration(seconds: 3), () {
      goTo(context);
    });
  }

  void goTo(BuildContext context) {
    Navigator.pushReplacementNamed(context, RouteName.ON_BOARDING);
  }

  @override
  void dispose() {
    if (timer != null) {
      timer.cancel();
      timer = null;
    }
    super.dispose();
  }
}
