import 'package:flutter/material.dart';
import 'package:flutterapp/app/routes/route_const.dart';

class LearnWidgetsScreen extends StatefulWidget {
  @override
  _LearnWidgetsScreenState createState() => _LearnWidgetsScreenState();
}

class _LearnWidgetsScreenState extends State<LearnWidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Learn Widget",
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  'AppBar',
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.APPBAR);
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text(
                  'Stepper',
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.STEPPER);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
