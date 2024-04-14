import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Variable_2.dart';
import 'package:untitled/main.dart';

class v0 extends StatelessWidget {
  const v0({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
      home: Scaffold(
          //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          backgroundColor: Color.fromRGBO(235, 146, 146, 100),
          body: Center(
            child: Container(
              child: Stack(
                children: [
                  Lottie.asset(
                    "asset/Animation/Variable_1.json",
                    repeat: false,
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => v1()));
                      },
                      child: Icon(Icons.arrow_forward),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    bottom: 8,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Myapp()));
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}
