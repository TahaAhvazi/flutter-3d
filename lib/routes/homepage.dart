import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 11, 24),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 5, 11, 24),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.arrow_back),
            Text(
              "Mechanical Keyboard",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Icon(Icons.card_travel)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  //TODO create the 3D object here
                  height: 400,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Container(
                    //TODO create the GLASSMORPHISM/FROSTED object here
                    height: 150,
                    color: Colors.green,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 10),
                  child: Text(
                    "Description",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0, top: 10),
                  child: Text(
                    "more",
                    style: TextStyle(
                        color: Color.fromARGB(255, 172, 172, 172),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
