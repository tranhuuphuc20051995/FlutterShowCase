import 'package:flutter/material.dart';
import 'package:flutterapp/app/routes/route_const.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, RouteName.HOME);
            },
            child: Text(
              'OnBoarding Screen',
            ),
          ),
        ),
      ),
    );
  }
}
