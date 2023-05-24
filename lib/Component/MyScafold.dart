import 'package:flutter/material.dart';
import 'package:flutter_app/Component/MyDrawer.dart';

class MyScaffold extends StatelessWidget {

  final Widget body;

  const MyScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Navigation Drawer',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}