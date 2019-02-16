import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            bigCenterText("Home"),
            bigCenterText("Notify"),
            bigCenterText("Map"),
            bigCenterText("Profile"),
            bigCenterText("Setup"),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          color: Colors.blue,
          child: TabBar(
            labelPadding: EdgeInsets.all(15),
            tabs: <Widget>[
              Icon(Icons.view_quilt),
              Icon(Icons.notifications),
              Icon(Icons.explore),
              Icon(Icons.person),
              Icon(Icons.settings),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bigCenterText(String text) => Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
