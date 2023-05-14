import 'package:flutter/widgets.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class UnitOffset {
  final Unit dx;
  final Unit dy;
  Offset offset(UnitContext uctx) => Offset(dx.px(uctx), dy.px(uctx));
  const UnitOffset(this.dx, this.dy);
  static const zero = const UnitOffset(Px(0), Px(0));
  static fromOffset(Offset offset) => UnitOffset(Px(offset.dx), Px(offset.dy));
}
