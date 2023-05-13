import 'package:flutter_fss/src/units/unit.dart';
import 'package:flutter_fss/src/units/unit_context.dart';

class Px implements Unit {
  final double value;

  @override
  px(UnitContext? uctx) => value;

  @override
  get cssValue => '${value}px';

  const Px(this.value);
}
