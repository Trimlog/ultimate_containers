import 'package:flutter/widgets.dart';
import 'package:flutter_stylesheets/src/fss.dart';
import 'package:flutter_stylesheets/src/units/unit.dart';
import 'package:flutter_stylesheets/src/units/unit_context.dart';

class Rem implements Unit {
  final double value;

  @override
  px(UnitContext? uctx) {
    if (uctx == null) throw MissingUnitContext();
    if (uctx.context == null) throw MissingBuildContext();
    final mediaQueryData = MediaQuery.of(uctx.context!);
    return value * FSS.basic().fontSize!.value * mediaQueryData.textScaleFactor;
  }

  @override
  get cssValue => '${value}em';

  const Rem(this.value);
}
