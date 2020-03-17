import 'package:flutter/material.dart';
import 'package:flutterapp/resources/app_config.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context).appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  "You are running ${AppConfig.of(context).buildFlavor} flavor",
                ),
                Text(
                  'Theme',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
