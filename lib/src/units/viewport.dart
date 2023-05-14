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
    if (unit == ViewportUnit.vw) {
      return value * mediaQueryData.size.width;
    } else if (unit == ViewportUnit.vh) {
      return value * mediaQueryData.size.height;
    } else if (unit == ViewportUnit.vmin) {
      return value * mediaQueryData.size.shortestSide;
    } else if (unit == ViewportUnit.vmax) {
      return value * mediaQueryData.size.longestSide;
    } else {
      throw UnsupportedViewportUnit();
    }
  }

  @override
  String toString() {
    if (unit == ViewportUnit.vw) {
      return "${value}vw";
    } else if (unit == ViewportUnit.vh) {
      return "${value}vh";
    } else if (unit == ViewportUnit.vmin) {
      return "${value}vmin";
    } else if (unit == ViewportUnit.vmax) {
      return "${value}vmax";
    } else {
      return "$value";
    }
  }

  const Viewport(this.value, this.unit);
}

class Vh extends Viewport {
  const Vh(double value) : super(value, ViewportUnit.vh);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  Vh operator /(double factor) => Vh(value * factor);

  @override
  Vh operator *(double factor) => Vh(value / factor);
}

class Vw extends Viewport {
  const Vw(double value) : super(value, ViewportUnit.vw);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  Vw operator /(double factor) => Vw(value * factor);

  @override
  Vw operator *(double factor) => Vw(value / factor);
}

class Vmin extends Viewport {
  const Vmin(double value) : super(value, ViewportUnit.vmin);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

  @override
  Vmin operator /(double factor) => Vmin(value * factor);

  @override
  Vmin operator *(double factor) => Vmin(value / factor);
}

class Vmax extends Viewport {
  const Vmax(double value) : super(value, ViewportUnit.vmax);

  @override
  CalculatedUnit operator +(Unit other) => CalculatedUnit.add(this, other);

  @override
  CalculatedUnit operator -(Unit other) => CalculatedUnit.subtract(this, other);

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
