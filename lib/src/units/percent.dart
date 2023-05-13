import 'package:flutter/material.dart';
import 'package:flutter_stylesheets/src/units/unit.dart';
import 'package:flutter_stylesheets/src/units/unit_context.dart';

abstract class Percent implements Unit {
  final double value;
  final Axis axis;

  @override
  px(UnitContext? uctx) {
    if (uctx == null) throw MissingUnitContext();
    if (uctx.context == null) throw MissingBuildContext();
    if (uctx.constraints == null) throw MissingConstraints();
    if (axis == Axis.horizontal) {
      return value * uctx.constraints!.maxWidth;
    } else {
      return value * uctx.constraints!.maxHeight;
    }
  }

  @override
  get cssValue => '$value%';

  const Percent(this.value, this.axis);
}

class PercentV extends Percent {
  const PercentV(double value) : super(value, Axis.vertical);
}

class PercentH extends Percent {
  const PercentH(double value) : super(value, Axis.horizontal);
}
