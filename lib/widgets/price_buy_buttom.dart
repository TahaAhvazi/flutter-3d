import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PriceAndBut extends StatelessWidget {
  const PriceAndBut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    style: TextStyle(color: Colors.blueAccent, fontSize: 18),
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
                color: Colors.blue, borderRadius: BorderRadius.circular(22)),
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
    );
  }
}
