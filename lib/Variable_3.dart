import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Datatype_0.dart';

class v2 extends StatelessWidget {
  const v2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
      home: Scaffold(
          body: Center(
        child: Stack(
          children: [
            Lottie.asset(
              "asset/Animation/Variable_3.json",
              repeat: false,
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => d0()));
                },
                child: const Text(
                  "Data Type",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      )
          //
          //       ),
          //
          // bottomNavigationBar: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     SizedBox(width: 130),
          //     ElevatedButton(child: Text("DataType",style: TextStyle(fontSize: 30),),onPressed: (
          //         ){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>d0()));},),
          //   ],
          // )
          ),
    ));
  }
}
