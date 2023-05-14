import 'package:ultimate_containers/ultimate_containers.dart';

class Px implements Unit {
  final double value;

  @override
  px(UnitContext? uctx) => value;

  @override
  String toString() => '${value}px';

  const Px(this.value);

  @override
  Calc operator +(Unit other) => Calc.add(this, other);

  @override
  Calc operator -(Unit other) => Calc.subtract(this, other);

  @override
  Px operator /(double factor) => Px(value * factor);

  @override
  Px operator *(double factor) => Px(value / factor);
}

Px px(double value) => Px(value);
