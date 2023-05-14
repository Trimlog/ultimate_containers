import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class UltimateLayoutPage extends StatelessWidget {
  const UltimateLayoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    final uctx = UnitContext(ctx, null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ultimate Containers - Box Test'),
      ),
      body: C([
        C([
          navbarWrapper,
          vw100,
          C([
            navbar,
            maxWidth,
            'Navbar',
          ]),
        ]),
        EC([
          pv100,
          vw100,
          C([
            maxWidth,
            content,
            'Content',
            Breakpoints.basic().getBreakpoint(ctx).name,
          ]),
        ]),
        C([
          footerWrapper,
          vw100,
          C([
            maxWidth,
            footer,
            'footer',
          ]),
        ]),
      ]),
    );
  }
}

final vw100 = FSS(
  w: vw(1),
  axis: Axis.horizontal,
  alignHorizontal: AxisAlignment.center,
);

final pv100 = FSS(
  h: percentH(100),
);

final navbarWrapper = FSS(
  bg: Colors.blue[100],
);

final navbar = FSS(
  h: rem(4),
  p: rem(1),
);

final maxWidth = FSS(
  w: vw(1),
  borderColor: Colors.red,
  borderWidth: px(1),
  borderAlign: 0.0,
  md: FSS(
    w: vw(0.7),
  ),
);

final content = FSS(
  bg: Colors.amber,
  p: rem(1),
  sm: FSS(bg: Colors.red),
  md: FSS(
    bg: Colors.green,
    paddingHorizontal: px(0),
  ),
  lg: FSS(bg: Colors.blue),
  xl: FSS(bg: Colors.purple),
);

final footerWrapper = FSS(
  bg: Colors.blue[100],
);

final footer = FSS(
  h: rem(4),
  p: rem(1),
);
