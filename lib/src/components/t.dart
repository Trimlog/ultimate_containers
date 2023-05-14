import 'package:flutter/material.dart';
import 'package:ultimate_containers/src/fss.dart';
import 'package:ultimate_containers/src/units/unit_context.dart';

/// Ultimate Text widget
class T extends StatelessWidget {
  T(
    dynamic inputs, {
    Key? key,
  }) : super(key: key) {
    final _inputs = inputs is Iterable ? inputs : [inputs];
    strings = [];
    fss = [];
    for (final input in _inputs) {
      if (input is String)
        strings.add(input);
      else if (input is FSS)
        fss.add(input);
      else if (input is TextStyle)
        fss.add(FSS().mergeTextStyle(input));
      else
        strings.add(inputs.toString());
    }
  }

  late final List<String> strings;
  late final List<FSS> fss;

  @override
  Widget build(BuildContext ctx) {
    final calculatedFss = FSS.of(ctx).inhertiable().mergeMulti(fss);
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final uctx = UnitContext(ctx, constraints);
        return Text(
          strings.join(' '),
          style: calculatedFss?.textStyle(uctx),
        );
      },
    );
  }
}
