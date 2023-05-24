import 'package:flutter/material.dart';
import 'SecondPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Gelateria da Rut')),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
              child: Column(children: [
            Container(height: 10),
            const Text('Il gelato migliore',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Container(height: 70),
            Image.network('https://picsum.photos/250?image=9'),
            Container(height: 100),
            //con questo button mostro un messaggio nella
            //snackbar o bar bottom
            ElevatedButton(
                onPressed: () {
                  SnackBar snackBar = const SnackBar(content: Text('ciao'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Informazioni',
                    style: TextStyle(color: Colors.white, fontSize: 20))),
            Container(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SecondPage(title: 'SecondPage');
                  }));
                },
                child: const Text('SecondPage',
                    style: TextStyle(color: Colors.white, fontSize: 20)))
          ]));
        }));
  }
}
