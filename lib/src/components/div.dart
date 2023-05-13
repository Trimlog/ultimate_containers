import 'package:flutter/material.dart';
import 'package:flutter_stylesheets/src/fss.dart';
import 'package:flutter_stylesheets/src/fss_provider.dart';
import 'package:flutter_stylesheets/src/units/unit_context.dart';

class Div extends StatelessWidget {
  Div(
    this.fss, {
    Key? key,
    this.child,
  }) : super(key: key);

  final List<FSS?>? fss;
  final Widget? child;

  @override
  Widget build(BuildContext ctx) {
    final fss = FSS.of(ctx).inhertiable().mergeMulti(this.fss);
    return LayoutBuilder(builder: (ctx, constraints) {
      final uctx = UnitContext(ctx, constraints);
      return Padding(
        key: key,
        padding: fss.marginEdgeInset(UnitContext(ctx, constraints)),
        child: Container(
          width: fss.width?.px(uctx),
          height: fss.height?.px(uctx),
          padding: fss.paddingEdgeInset(uctx),
          decoration: BoxDecoration(
            color: fss.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(fss.borderRadiusTopLeft?.px(uctx) ?? 0),
              topRight: Radius.circular(fss.borderRadiusTopRight?.px(uctx) ?? 0),
              bottomLeft: Radius.circular(fss.borderRadiusBottomLeft?.px(uctx) ?? 0),
              bottomRight: Radius.circular(fss.borderRadiusBottomRight?.px(uctx) ?? 0),
            ),
          ),
          child: FSSProvider(
            fss: fss,
            child: child ?? Container(),
          ),
        ),
      );
    });
  }
}
