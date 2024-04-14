import 'package:flutter/material.dart';
import 'package:untitled/Datatype_1.dart';
import 'package:untitled/variable_1.dart';

class d0 extends StatelessWidget {
  const d0({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "Hearing and Listening Problem",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.redAccent[100],
        body: Stack(
          children: [
            Center(
              child: Text(
                "DataType",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Positioned(
              right: 8,
              bottom: 8,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => d1()));
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
