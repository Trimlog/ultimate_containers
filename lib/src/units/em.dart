import 'package:flutter/widgets.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class Em implements Unit {
  final double value;

  @override
  px(UnitContext? uctx) {
    if (uctx == null) throw MissingUnitContext();
    if (uctx.context == null) throw MissingBuildContext();
    final mediaQueryData = MediaQuery.of(uctx.context!);
    return value * FSS.ofUctx(uctx).fontSize!.value * mediaQueryData.textScaleFactor;
  }

  @override
  String toString() => '${value}em';

  const Em(this.value);

  @override
  Calc operator +(Unit other) => Calc.add(this, other);

  @override
  Calc operator -(Unit other) => Calc.subtract(this, other);

  @override
  Unit operator /(double factor) => Em(value * factor);

  @override
  Em operator *(double factor) => Em(value / factor);
}

Em em(double value) => Em(value);
