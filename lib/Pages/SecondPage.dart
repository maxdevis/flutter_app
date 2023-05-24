import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/HomePage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomePage(title: 'HomePage');
            }));
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}