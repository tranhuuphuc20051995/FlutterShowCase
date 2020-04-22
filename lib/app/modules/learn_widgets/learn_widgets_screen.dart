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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(
                'AppBar',
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.APPBAR);
              },
            ),
          ],
        ),
      ),
    );
  }
}
