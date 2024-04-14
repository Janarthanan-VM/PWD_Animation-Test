import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/VariableDeclaration_1.dart';
class vd0 extends StatelessWidget {
  const vd0({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Center(
                child: Text(
              "Variable Declaration",
              style: TextStyle(fontSize: 30),
            )),

            Positioned(
              right: 8,bottom: 8,
              child: FloatingActionButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>vd1()));
              },
              child: Icon(Icons.arrow_forward),),
            )
          ],
        ),
      ),
    );
  }
}
