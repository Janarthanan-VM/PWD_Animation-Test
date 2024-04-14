import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Quiz_variables.dart';

class vd1 extends StatelessWidget {
  const vd1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Center(
                child: Lottie.asset(
                    "asset/Animation/Variable_Declaration_1.json",
                    repeat: false)),
            Positioned(
                bottom: 8,
                right: 8,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => test1()));
                  },
                  child: Text(
                    "Test",
                    style: TextStyle(fontSize: 20),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
