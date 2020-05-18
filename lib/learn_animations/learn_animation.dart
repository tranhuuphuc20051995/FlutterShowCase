import 'package:flutter/material.dart';

void main() {
  runApp(LearnAnimationApp());
}

class LearnAnimationApp extends StatefulWidget {
  @override
  _LearnAnimationAppState createState() => _LearnAnimationAppState();
}

class _LearnAnimationAppState extends State<LearnAnimationApp> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ///Animated Container
                animatedContainer(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///Start - Animated Container

  Widget animatedContainer() {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 200.0 : 100.0,
          color: selected ? Colors.red : Colors.blue,
          alignment: selected ? Alignment.center : Alignment.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75),
        ),
      ),
    );
  }

  ///End - Animated Container
}
