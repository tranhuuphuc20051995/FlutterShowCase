import 'package:flutter/material.dart';
import 'package:flutterapp/app/routes/route_const.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Home Screen',
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.LEARN_WIDGET);
                },
                child: Text(
                  'Show Learn Widget Screen',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
