import 'package:ultimate_containers/ultimate_containers.dart';

abstract class Unit {
  final double value = 0.0;
  double px(UnitContext? uctx);
  @override
  String toString() => value.toString();
  Unit operator +(Unit other);
  Unit operator -(Unit other);
  Unit operator *(double factor);
  Unit operator /(double factor);
}


