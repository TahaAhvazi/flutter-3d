import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorsRow extends StatelessWidget {
  const ColorsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                color: const Color.fromARGB(255, 255, 173, 22), width: 3),
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
        const SizedBox(width: 10),
      ],
    );
  }
}
