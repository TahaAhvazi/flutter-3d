import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
