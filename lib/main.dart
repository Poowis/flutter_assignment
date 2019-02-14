import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/login.dart';
import 'package:flutter_assignment/ui/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/register": (context) => Register(),
      },
    );
  }
}
