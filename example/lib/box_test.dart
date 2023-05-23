import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class BoxTestPage extends StatelessWidget {
  const BoxTestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ultime Containers - Box Test'),
      ),
      body: Center(
        child: C([
          FSS(p: rem(1)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Pixel Container
              C([
                pxBox,
                'pxBox',
              ]),
              C([
                emBox,
                'emBox',
              ]),
              // Percent Parent Container

              // Percent Container
              C([
                percentBox,
                'percentBox',
              ]),

              // Viewport Container
              C([
                viewportBox1,
                'viewportBox1',
              ]),

              // Apple Switch
              C([
                FSS(
                  w: rem(3.4),
                  h: rem(2),
                  bg: const Color(0xFF34c759),
                  br: rem(1),
                  p: rem(0.15),
                ),
                EC([
                  FSS(
                    w: percentH(1),
                    h: percentH(1),
                    bg: Colors.white,
                    shadows: naturalShadow(),
                    br: percentH(1) / 2,
                  ),
                ])
              ]),

              // Stack
              C([
                stack,
                C([stackContainer1]),
                C([stackContainer2]),
              ])
            ],
          ),
        ]),
      ),
    );
  }
}

final box = FSS(
  bg: Colors.amber,
  shadows: naturalShadow(),
  p: rem(0.75),
  m: rem(0.1),
  br: rem(1),
  borderColor: Colors.grey[200],
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

final stack = FSS(
  axis: Axis3D.deep,
  alignHorizontal: AxisAlignment.center,
  alignVertical: AxisAlignment.center,
);

final stackContainer1 = FSS(
  bg: Colors.red,
  w: rem(4),
  h: rem(4),
).dependsOn(box);

final stackContainer2 = FSS(
  bg: Colors.green,
  w: rem(3),
  h: rem(3),
).dependsOn(box);
