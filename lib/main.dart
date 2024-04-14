import 'package:flutter/material.dart';
import 'package:untitled/variable_1.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "Hearing and Listining Problem",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.redAccent[100],
        body: Center(
          child: Text(
            "Variable",
            style: TextStyle(fontSize: 40, color: Colors.red[800]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => v0()));
          },
          child: Icon(Icons.arrow_forward),
        ),
      )),
    );
  }
}
