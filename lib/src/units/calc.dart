import 'package:ultimate_containers/ultimate_containers.dart';

class Calc implements Unit {
  final Unit? unit0;
  final double factor1;
  final Unit? unit1;

  @override
  double px(UnitContext? uctx) => (unit0?.px(uctx) ?? 0) + (unit1?.px(uctx) ?? 0) * factor1;

  @override
  double get value => throw UnimplementedError();

  Calc(this.unit0, this.factor1, this.unit1);

  static Calc add(Unit unit0, Unit unit1) => Calc(unit0, 1, unit1);
  static Calc subtract(Unit unit0, Unit unit1) => Calc(unit0, -1, unit1);
  static Calc multiply(Unit unit1, double factor) => Calc(null, factor, unit1);
  static Calc divide(Unit unit1, double factor) => Calc(null, 1 / factor, unit1);

  @override
  Calc operator *(double factor) => Calc.multiply(this, factor);

  @override
  Calc operator +(Unit other) => Calc.add(this, other);

  @override
  Calc operator -(Unit other) => Calc.subtract(this, other);

  @override
  Calc operator /(double factor) => Calc.divide(this, factor);
}
