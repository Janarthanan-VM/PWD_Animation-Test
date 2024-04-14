import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Datatype_2.dart';

class d1 extends StatelessWidget {
  const d1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          home: Scaffold(
        body: Stack(
          children: [
            Center(
                child: Lottie.asset(
              "asset/Animation/Datatype_1.json",
              repeat: false,
            )),
            Positioned(
              right: 8,
              bottom: 8,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => d2()));
                },
                child: Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      )),
    );
  }
}
