import 'package:flutter/widgets.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

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
  String toString() => '${value}px';

  const Rem(this.value);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  Rem operator /(double factor) => Rem(value * factor);

  @override
  Rem operator *(double factor) => Rem(value / factor);
}

Rem rem(double value) => Rem(value);
