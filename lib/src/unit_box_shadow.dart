import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class UnitBoxShadow {
  final Color color;
  final UnitOffset offset;
  final Unit blurRadius;
  final Unit speadRadius;
  final BlurStyle blurStyle;
  BoxShadow boxShadow(UnitContext uctx) => BoxShadow(
        color: color,
        offset: offset.offset(uctx),
        blurRadius: blurRadius.px(uctx),
        spreadRadius: speadRadius.px(uctx),
        blurStyle: blurStyle,
      );
  const UnitBoxShadow({
    this.color = Colors.black,
    this.offset = UnitOffset.zero,
    this.blurRadius = const Px(0),
    this.speadRadius = const Px(0),
    this.blurStyle = BlurStyle.normal,
  });
  static UnitBoxShadow fromBoxShadow(BoxShadow shadow) => UnitBoxShadow(
        color: shadow.color,
        offset: UnitOffset(Px(shadow.offset.dx), Px(shadow.offset.dy)),
        blurRadius: Px(shadow.blurRadius),
        speadRadius: Px(shadow.spreadRadius),
        blurStyle: shadow.blurStyle,
      );
}
