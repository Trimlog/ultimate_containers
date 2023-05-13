import 'package:flutter/material.dart';
import 'package:flutter_fss/src/units/unit.dart';
import 'package:flutter_fss/src/units/unit_context.dart';

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
  get cssValue => '$value%';

  const Viewport(this.value, this.unit);
}

class Vh extends Viewport {
  const Vh(double value) : super(value, ViewportUnit.vh);
}

class Vw extends Viewport {
  const Vw(double value) : super(value, ViewportUnit.vw);
}

class Vmin extends Viewport {
  const Vmin(double value) : super(value, ViewportUnit.vmin);
}

class Vmax extends Viewport {
  const Vmax(double value) : super(value, ViewportUnit.vmax);
}

enum ViewportUnit { vh, vw, vmin, vmax }

class UnsupportedViewportUnit implements Exception {
  final message = 'Unsupported viewport unit';
}
