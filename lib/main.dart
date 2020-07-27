import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/MainView.dart';
import 'package:real_estate_app/ui/explore/explore.dart';
import 'package:real_estate_app/ui/onboarding.dart';
import 'package:real_estate_app/ui/splash_screen.dart';
import 'package:real_estate_app/ui/verification_interfaces/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MainView());
  }
}
