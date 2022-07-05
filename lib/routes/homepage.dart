import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 11, 24),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.arrow_back),
            Text(
              "Astronium Toy",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Icon(Icons.card_travel)
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.network(
                  'https://raw.githubusercontent.com/RitickSaha/glassmorphism/master/example/assets/bg.png'),
              Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        //TODO create the 3D object here
                        height: 400,
                        child: Cube(
                          onSceneCreated: (Scene scene) {
                            scene.camera.zoom = 10;
                            scene.world.add(
                              Object(
                                fileName: 'assets/Astronaut.obj',
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
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
                                  const Color.fromARGB(255, 245, 245, 245)
                                      .withAlpha(55),
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
                                  const Color.fromARGB(255, 38, 104, 204)
                                      .withAlpha(100),
                                  const Color.fromARGB(15, 0, 0, 0)
                                      .withAlpha(55),
                                  const Color.fromARGB(255, 0, 23, 233)
                                      .withAlpha(10),
                                ],
                                stops: const [
                                  0.06,
                                  0.95,
                                  1
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          color:
                                              Color.fromARGB(255, 6, 226, 255),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              const Color.fromARGB(75, 0, 0, 0),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              const Color.fromARGB(75, 0, 0, 0),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              const Color.fromARGB(75, 0, 0, 0),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              const Color.fromARGB(75, 0, 0, 0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Lottie.asset('assets/star.json',
                                          height: 20, width: 100),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Astronium is a genus of flowering plants in the cashew family, Anacardiaceae. It is native to Central and South America Fossils of an Astronium...",
                      style: TextStyle(
                          color: Color.fromARGB(255, 201, 201, 201),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Colors  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 71, 71, 71),
                        ),
                        height: 35,
                        width: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 255, 173, 22),
                              width: 3),
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        height: 35,
                        width: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 47, 0, 255),
                        ),
                        height: 35,
                        width: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Price",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: const [
                                Text(
                                  "\$ ",
                                  style: TextStyle(
                                      color: Colors.blueAccent, fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "36.20",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(22)),
                          height: 60,
                          width: 280,
                          child: const Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
