import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Astronium is a genus of flowering plants in the cashew family, Anacardiaceae. It is native to Central and South America Fossils of an Astronium...",
        style: TextStyle(
            color: Color.fromARGB(255, 201, 201, 201),
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
