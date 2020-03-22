import 'package:flutter/material.dart';

import 'app/modules/splash/splash_screen.dart';
import 'app/routes/routes_setting_ext.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      onGenerateRoute: (RouteSettings settings) => settings.generateRoute,
      onUnknownRoute: (RouteSettings setting) {
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      },
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
    );
  }
}

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Not Found Page"),
        ),
      ),
    );
  }
}
