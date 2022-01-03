import 'package:flutter/material.dart';
import 'package:untitled31/Login_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey), home: LoginPage());
  }
}
