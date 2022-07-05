import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 11, 24),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 5, 11, 24),
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
                  child: const WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl:
                        'https://app.vectary.com/p/0AAXV4Ek5G7XuQ0lWi3g4G',
                  ),
                ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 240.0),
                //       child: Padding(
                //         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                //         child: GlassmorphicContainer(
                //           //TODO create the GLASSMORPHISM/FROSTED object here
                //           height: 150,
                //           width: double.infinity,
                //           blur: 10,
                //           borderRadius: 20,
                //           border: 0,
                //           linearGradient: LinearGradient(
                //               begin: Alignment.topLeft,
                //               end: Alignment.bottomRight,
                //               colors: [
                //                 const Color.fromARGB(255, 245, 245, 245)
                //                     .withAlpha(55),
                //                 const Color(0xFFffffff).withAlpha(45),
                //               ],
                //               stops: const [
                //                 0.3,
                //                 1,
                //               ]),
                //           borderGradient: LinearGradient(
                //               begin: Alignment.bottomRight,
                //               end: Alignment.topLeft,
                //               colors: [
                //                 const Color.fromARGB(255, 38, 104, 204)
                //                     .withAlpha(100),
                //                 const Color.fromARGB(15, 0, 0, 0).withAlpha(55),
                //                 const Color.fromARGB(255, 0, 23, 233).withAlpha(10),
                //               ],
                //               stops: const [
                //                 0.06,
                //                 0.95,
                //                 1
                //               ]),
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: const [
                //     Padding(
                //       padding: EdgeInsets.only(left: 8.0, top: 10),
                //       child: Text(
                //         "Description",
                //         style: TextStyle(
                //             color: Color.fromARGB(255, 255, 255, 255),
                //             fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.only(right: 8.0, top: 10),
                //       child: Text(
                //         "more",
                //         style: TextStyle(
                //             color: Color.fromARGB(255, 172, 172, 172),
                //             fontWeight: FontWeight.bold),
                //       ),
                //     ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "MechanicalKeyboards.com is the Ultimate Mechanical Keyboard Catalog and Guide. Find and buy the best mechanical keyboard ...",
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
      ),
    );
  }
}
