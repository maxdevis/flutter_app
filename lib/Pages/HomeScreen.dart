import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}