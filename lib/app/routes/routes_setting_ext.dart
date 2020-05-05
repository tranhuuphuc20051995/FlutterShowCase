import 'package:flutter/material.dart';
import 'package:flutterapp/app/modules/home/home_screen.dart';
import 'package:flutterapp/app/modules/learn_widgets/learn_widgets_screen.dart';
import 'package:flutterapp/app/modules/onboarding/onboarding_screen.dart';
import 'package:flutterapp/app/modules/splash/splash_screen.dart';
import 'package:flutterapp/learn_widget_ui/app_bar.dart';
import 'package:flutterapp/learn_widget_ui/stepper.dart';

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
      case RouteName.LEARN_WIDGET:
        return MaterialPageRoute(builder: (context) => LearnWidgetsScreen());
        break;
      case RouteName.APPBAR:
        return MaterialPageRoute(builder: (context) => AppBarWidget());
        break;
      case RouteName.STEPPER:
        return MaterialPageRoute(builder: (context) => StepperWidget());
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
