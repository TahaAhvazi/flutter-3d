import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ThreeDObject extends StatelessWidget {
  const ThreeDObject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
