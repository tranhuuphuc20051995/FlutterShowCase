import 'package:flutter/material.dart';
import 'package:flutterapp/resources/app_config.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.instance.name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppConfig.instance.name),
          backgroundColor: AppConfig.instance.color,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "You are running ${AppConfig.instance.flavor.toString()}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
