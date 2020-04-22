import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  Icon btSearch = Icon(Icons.search);
  Widget appBarTitle = Text('AppBar Page');

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
                  appBarTitle = Text('AppBar Page');
                }
              });
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text.rich(
              TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "Text",
                ),
                TextSpan(
                  text: " Rich",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTextStyle(
              child: Text("DefaultTextStyle"),
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Text"),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: "Rich Text",
              ),
            )
          ],
        ),
      ),
    );
  }
}
