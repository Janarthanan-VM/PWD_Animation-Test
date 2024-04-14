import 'package:flutter/material.dart';

class level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            home: Scaffold(
      appBar: AppBar(
        title: Text("Hearing and Listining Problem"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 170,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 230,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 290,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 240,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 190,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 150,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    )));
  }
}
