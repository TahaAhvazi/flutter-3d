import 'package:flutter/material.dart';
import 'package:flutter_3dshop/widgets/3dObject.dart';
import 'package:flutter_3dshop/widgets/appbar.dart';
import 'package:flutter_3dshop/widgets/descRow.dart';
import 'package:flutter_3dshop/widgets/description.dart';
import 'package:flutter_3dshop/widgets/glassmorphism.dart';
import 'package:flutter_3dshop/widgets/price_buy_buttom.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';

import '../widgets/colorsOptions.dart';

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
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        centerTitle: true,
        title: const CustomAppBar(),
      ),
      body: SizedBox(
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
                    children: const [
                      ThreeDObject(),
                      Padding(
                        padding: EdgeInsets.only(top: 240.0),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: GlassMorphismContainer(),
                        ),
                      )
                    ],
                  ),
                  const DescriptionRow(),
                  const Description(),
                  const ColorsRow(),
                  const SizedBox(height: 5),
                  const PriceAndBut(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
