import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: C([
          FSS(backgroundColor: Colors.amber),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Pixel Container
              C([
                pxBox,
                '50px x 50px',
              ]),
              C([
                emBox,
                '3em x 3em',
              ]),
              // Percent Parent Container
              C([
                FSS(w: u('10%'), h: u('10rem')).dependsOn(box),
                '50% x 50%',
                // Percent Container
                // C([
                //   percentBox,
                //   '10px x 10px',
                // ]),
              ]),
              // Viewport Container
              C([
                viewportBox1,
                '50vw x 10vh',
              ])
            ],
          ),
        ]),
      ),
    );
  }
}

final box = FSS(
  bg: const Color.fromRGBO(230, 230, 240, 1),
  shadows: [
    UnitBoxShadow(
      color: Colors.black,
      offset: UnitOffset(rem(1), rem(1)),
    )
  ],
  p: rem(0.75),
  m: rem(0.1),
  br: rem(1),
);
final pxBox = FSS(
  w: px(200),
  h: px(100),
).dependsOn(box);
final emBox = FSS(
  w: em(5),
  h: em(5),
).dependsOn(box);
final percentBox = FSS(
  w: px(50),
  h: px(50),
).dependsOn(box);
final viewportBox1 = FSS(
  w: vw(0.5),
  h: vh(0.1),
).dependsOn(box);
final viewportBox2 = FSS(
  w: vw(1.0),
  h: vh(0.0),
).dependsOn(box);
