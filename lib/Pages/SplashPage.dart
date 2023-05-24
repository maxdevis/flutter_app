import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
        ),
        child: const Stack(
          alignment: Alignment.center,
          children: [
          Image(
              image: AssetImage('assets/images/logo_parkylon.png'),
              fit: BoxFit.cover,
            ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: Text(
              "Resettami Parkinson",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 22,
                color: Color(0xff00A19B),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
