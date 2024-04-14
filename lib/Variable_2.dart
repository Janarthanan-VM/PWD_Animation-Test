import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Variable_3.dart';

class v1 extends StatefulWidget {
  const v1({super.key});

  @override
  State<v1> createState() => _MyappState();
}

class _MyappState extends State<v1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            home: Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Lottie.asset(
                "asset/Animation/Variable_2.json",
                repeat: false,
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => v2()));
                  },
                  child: Icon(Icons.arrow_forward),
                ),
              )
            ],
          ),
        ),
      ),
    )));
  }
}
