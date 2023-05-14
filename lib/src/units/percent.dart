import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

abstract class Percent implements Unit {
  final double value;
  final Axis axis;

  @override
  px(UnitContext? uctx) {
    if (uctx == null) throw MissingUnitContext();
    if (uctx.context == null) throw MissingBuildContext();
    if (uctx.constraints == null) throw MissingConstraints();
    print(value);
    print(axis);
    print(uctx.constraints);
    if (axis == Axis.horizontal) {
      if (uctx.constraints!.maxWidth.isInfinite) {
        // Parent has given infinite width constraint
        // value * infinity = infinity
        // This would cause an pixel overflow error
        // Fix: Wrap inside Widget that constrains width or Expanded for maximum width
        throw UnconstrainedWidth();
      }
      return value * uctx.constraints!.maxWidth;
    } else {
      if (uctx.constraints!.maxHeight.isInfinite) {
        // Parent has given infinite height constraint
        // value * infinity = infinity
        // This would cause an pixel overflow error
        // Fix: Wrap inside Widget that constrains height or Expanded for maximum height
        throw UnconstrainedHeight();
      }
      return value * uctx.constraints!.maxHeight;
    }
  }

  @override
  String toString() => '$value%';

  const Percent(this.value, this.axis);
}

class UnconstrainedWidth implements Exception {
  final String message = "Width constraint is infinite. Wrap in Expanded or constrain otherwise.";
}

class UnconstrainedHeight implements Exception {
  final String message = "Height constraint is infinite. Wrap in Expanded or constrain otherwise.";
}

/// Height in percent
class PercentH extends Percent {
  const PercentH(double value) : super(value, Axis.vertical);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  PercentH operator /(double factor) => PercentH(value * factor);

  @override
  PercentH operator *(double factor) => PercentH(value / factor);
}

/// Width in percent
class PercentW extends Percent {
  const PercentW(double value) : super(value, Axis.horizontal);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  PercentW operator /(double factor) => PercentW(value * factor);

  @override
  PercentW operator *(double factor) => PercentW(value / factor);
}

PercentH percentH(double value) => PercentH(value);
PercentW percentW(double value) => PercentW(value);
