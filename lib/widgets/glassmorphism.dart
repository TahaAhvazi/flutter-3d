import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';

class GlassMorphismContainer extends StatelessWidget {
  const GlassMorphismContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 240.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: GlassmorphicContainer(
          //TODO create the GLASSMORPHISM/FROSTED object here
          height: 150,
          width: double.infinity,
          blur: 10,
          borderRadius: 20,
          border: 0,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 245, 245, 245).withAlpha(55),
                const Color(0xFFffffff).withAlpha(45),
              ],
              stops: const [
                0.3,
                1,
              ]),
          borderGradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                const Color.fromARGB(255, 38, 104, 204).withAlpha(100),
                const Color.fromARGB(15, 0, 0, 0).withAlpha(55),
                const Color.fromARGB(255, 0, 23, 233).withAlpha(10),
              ],
              stops: const [
                0.06,
                0.95,
                1
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Astronium Toy",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      "In Stock in Amazon",
                      style: TextStyle(
                        color: Color.fromARGB(255, 6, 226, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(75, 0, 0, 0),
                      ),
                      height: 40,
                      width: 100,
                      child: const Center(
                          child: Text(
                        "Toy",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(75, 0, 0, 0),
                      ),
                      height: 40,
                      width: 100,
                      child: const Center(
                          child: Text(
                        "Astronium",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(75, 0, 0, 0),
                      ),
                      height: 40,
                      width: 100,
                      child: const Center(
                          child: Text(
                        "Kids",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(75, 0, 0, 0),
                      ),
                      height: 40,
                      width: 50,
                      child: const Center(
                          child: Text(
                        "Game",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Rate",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "5.0 stars",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Lottie.asset('assets/star.json', height: 20, width: 100),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
