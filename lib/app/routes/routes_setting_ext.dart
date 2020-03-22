import 'package:flutter/material.dart';
import 'package:flutterapp/app/modules/home/home_screen.dart';
import 'package:flutterapp/app/modules/onboarding/onboarding_screen.dart';
import 'package:flutterapp/app/modules/splash/splash_screen.dart';

import 'route_const.dart';

extension GenerateRoute on RouteSettings {
  get generateRoute {
    switch (this.name) {
      case RouteName.SPLASH:
        return MaterialPageRoute(builder: (context) => SplashScreen());
        break;
      case RouteName.ON_BOARDING:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
        break;
      case RouteName.HOME:
        return MaterialPageRoute(builder: (context) => HomeScreen());
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Container(),
          ),
        );
        break;
    }
  }
}
