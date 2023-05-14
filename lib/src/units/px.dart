import 'package:ultimate_containers/ultimate_containers.dart';

class Px implements Unit {
  final double value;

  @override
  px(UnitContext? uctx) => value;

  @override
  String toString() => '${value}px';

  const Px(this.value);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  Px operator /(double factor) => Px(value * factor);

  @override
  Px operator *(double factor) => Px(value / factor);
}

Px px(double value) => Px(value);
