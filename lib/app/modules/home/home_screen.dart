import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Icon btSearch = Icon(Icons.search);
  Widget appBarTitle = Text('Home Page');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color(0xFF832685),
                Color(0xFFC81379),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: btSearch,
            onPressed: () {
              setState(() {
                if (btSearch.icon == Icons.search) {
                  btSearch = Icon(Icons.close);
                  appBarTitle = TextField(
                    autofocus: true,
                    cursorColor: Color(0xFFAF2FB),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      filled: true,
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  btSearch = Icon(Icons.search);
                  appBarTitle = Text('Home Page');
                }
              });
            },
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'Home Screen',
          ),
        ),
      ),
    );
  }
}
