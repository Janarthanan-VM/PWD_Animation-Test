import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Datatype_2.dart';
import 'package:untitled/Datatype_3.dart';

class d2 extends StatelessWidget {
  const d2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          home: Scaffold(
            body: Stack(
              children: [
                Center(
                    child: Lottie.asset(
                      "asset/Animation/Datatype_2.json",
                      repeat: false,
                    )),
                Positioned(
                  right: 8,
                  bottom: 8,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => d3()));
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
