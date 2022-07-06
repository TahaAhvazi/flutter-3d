import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
