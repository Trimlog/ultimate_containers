import 'package:flutter_stylesheets/src/units/unit_context.dart';

abstract class Unit {
  final double value = 0.0;
  double? px(UnitContext? uctx);
  get cssValue => String;
}
