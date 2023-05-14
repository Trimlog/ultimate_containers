import 'package:ultimate_containers/ultimate_containers.dart';

class CalculatedUnit implements Unit {
  final Unit? unit0;
  final double factor1;
  final Unit? unit1;

  @override
  double px(UnitContext? uctx) => (unit0?.px(uctx) ?? 0) + (unit1?.px(uctx) ?? 0) * factor1;

  @override
  double get value => throw UnimplementedError();

  CalculatedUnit(this.unit0, this.factor1, this.unit1);

  static CalculatedUnit add(Unit unit0, Unit unit1) => CalculatedUnit(unit0, 1, unit1);
  static CalculatedUnit subtract(Unit unit0, Unit unit1) => CalculatedUnit(unit0, -1, unit1);
  static CalculatedUnit multiply(Unit unit1, double factor) => CalculatedUnit(null, factor, unit1);
  static CalculatedUnit divide(Unit unit1, double factor) => CalculatedUnit(null, 1 / factor, unit1);

  @override
  CalculatedUnit operator *(double factor) => CalculatedUnit.multiply(this, factor);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  CalculatedUnit operator /(double factor) => CalculatedUnit.divide(this, factor);
}