import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

abstract class Viewport implements Unit {
  /// Relative to 100% of the viewport  not 1% like in CSS
  final double value;
  final ViewportUnit unit;

  @override
  px(UnitContext? uctx) {
    if (uctx == null) throw MissingUnitContext();
    if (uctx.context == null) throw MissingBuildContext();
    final mediaQueryData = MediaQuery.of(uctx.context!);

    return switch (unit) {
      ViewportUnit.vw => value * mediaQueryData.size.width,
      ViewportUnit.vh => value * mediaQueryData.size.height,
      ViewportUnit.vmin => value * mediaQueryData.size.shortestSide,
      ViewportUnit.vmax => value * mediaQueryData.size.longestSide,
    };
  }

  @override
  String toString() => switch (unit) {
        ViewportUnit.vw => "${value}vw",
        ViewportUnit.vh => "${value}vh",
        ViewportUnit.vmin => "${value}vmin",
        ViewportUnit.vmax => "${value}vmax",
      };

  const Viewport(this.value, this.unit);
}

class Vh extends Viewport {
  const Vh(double value) : super(value, ViewportUnit.vh);

  @override
  Calc operator +(Unit other) => Calc.add(this, other);

  @override
  Calc operator -(Unit other) => Calc.subtract(this, other);

  @override
  Vh operator /(double factor) => Vh(value * factor);

  @override
  Vh operator *(double factor) => Vh(value / factor);
}

class Vw extends Viewport {
  const Vw(double value) : super(value, ViewportUnit.vw);

  @override
  Calc operator +(Unit other) => Calc.add(this, other);

  @override
  Calc operator -(Unit other) => Calc.subtract(this, other);

  @override
  Vw operator /(double factor) => Vw(value * factor);

  @override
  Vw operator *(double factor) => Vw(value / factor);
}

class Vmin extends Viewport {
  const Vmin(double value) : super(value, ViewportUnit.vmin);

  @override
  Calc operator +(Unit other) => Calc.add(this, other);

  @override
  Calc operator -(Unit other) => Calc.subtract(this, other);

  @override
  Vmin operator /(double factor) => Vmin(value * factor);

  @override
  Vmin operator *(double factor) => Vmin(value / factor);
}

class Vmax extends Viewport {
  const Vmax(double value) : super(value, ViewportUnit.vmax);

  @override
  Calc operator +(Unit other) => Calc.add(this, other);

  @override
  Calc operator -(Unit other) => Calc.subtract(this, other);

  @override
  Vmax operator /(double factor) => Vmax(value * factor);

  @override
  Vmax operator *(double factor) => Vmax(value / factor);
}

enum ViewportUnit { vh, vw, vmin, vmax }

class UnsupportedViewportUnit implements Exception {
  final message = 'Unsupported viewport unit';
}

Vh vh(double value) => Vh(value);
Vw vw(double value) => Vw(value);
Vmin vmin(double value) => Vmin(value);
Vmax vmax(double value) => Vmax(value);
