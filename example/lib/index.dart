import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';
import 'package:ultimate_containers_example/box_test.dart';
import 'package:ultimate_containers_example/ultimate_layout.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ultimate Containers'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const BoxTestPage(), settings: const RouteSettings(name: 'Box Test')),
              ),
              child: const Text('Box Test'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const UltimateLayoutPage(), settings: const RouteSettings(name: 'Ultimate Layout')),
              ),
              child: const Text('Ultimate Layout'),
            ),
          ],
        ),
      ),
    );
  }
}

final box = FSS(
  bg: const Color.fromRGBO(240, 240, 250, 1),
  shadows: [
    UnitBoxShadow(
      color: Colors.black,
      offset: UnitOffset(rem(1), rem(1)),
    )
  ],
  p: rem(0.75),
  m: rem(0.1),
  br: rem(1),
  borderColor: Colors.grey,
  borderWidth: px(1),
  borderAlign: -1,
);
final pxBox = FSS(
  w: px(200),
  h: px(100),
).dependsOn(box);
final emBox = FSS(
  w: em(5),
  h: em(5),
).dependsOn(box);
final percentBox = FSS(w: percentW(0.2), h: percentW(0.2)).dependsOn(box);
final viewportBox1 = FSS(
  w: vw(0.5),
  h: vh(0.1),
).dependsOn(box);
final viewportBox2 = FSS(
  w: vw(1.0),
  h: vh(0.0),
).dependsOn(box);
