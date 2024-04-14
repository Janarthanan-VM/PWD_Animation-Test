import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/VariableDeclaration_0.dart';

class d4 extends StatelessWidget {
  const d4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          home: Scaffold(
            body: Stack(
              children: [
                Center(
                    child: Lottie.asset(
                      "asset/Animation/Datatype_4.json",
                      repeat: false,
                    )),
                Positioned(
                  right: 8,
                  bottom: 8,
                  child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>vd0()));
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
