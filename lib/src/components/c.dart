import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

/// Ultimate Container Widget
class C extends StatelessWidget {
  C(
    dynamic inputs, {
    Key? key,
  }) : super(key: key) {
    final _inputs = inputs is Iterable ? inputs : [inputs];
    children = [];
    fss = [];
    for (final input in _inputs) {
      if (input is FSS)
        fss.add(input);
      else if (input is Widget)
        children.add(input);
      else
        children.add(T(input));
    }
    if (children.isEmpty) children.add(Container());
  }

  late final List<FSS?> fss;
  late final List<Widget> children;

  @override
  Widget build(BuildContext ctx) {
    final newFss = FSS.of(ctx).inhertiable().mergeMulti(this.fss);

    return LayoutBuilder(
      builder: (ctx, constraints) {
        final uctx = UnitContext(ctx, constraints);
        return Padding(
          padding: newFss.marginEdgeInset(UnitContext(ctx, constraints)),
          child: Container(
            width: newFss.width?.px(uctx),
            height: newFss.height?.px(uctx),
            padding: newFss.paddingEdgeInset(uctx),
            decoration: BoxDecoration(
              color: newFss.backgroundColor,
              borderRadius: newFss.hasBorderRadius()
                  ? BorderRadius.only(
                      topLeft: Radius.circular(newFss.borderRadiusTopLeft?.px(uctx) ?? 0),
                      topRight: Radius.circular(newFss.borderRadiusTopRight?.px(uctx) ?? 0),
                      bottomLeft: Radius.circular(newFss.borderRadiusBottomLeft?.px(uctx) ?? 0),
                      bottomRight: Radius.circular(newFss.borderRadiusBottomRight?.px(uctx) ?? 0),
                    )
                  : BorderRadius.zero,
              border: Border.fromBorderSide(BorderSide(
                color: newFss.borderColor ?? Colors.transparent,
                width: newFss.borderWidth?.px(uctx) ?? 0,
                style: newFss.borderStyle ?? BorderStyle.solid,
                strokeAlign: newFss.borderAlign ?? -1,
              )),
              boxShadow: newFss.shadows?.map((e) => e.boxShadow(uctx)).toList(),
            ),
            child: FSSProvider(
              fss: newFss,
              child: children.length > 1
                  ? Column(
                      children: children,
                    )
                  : children.first,
            ),
          ),
        );
      },
    );
  }
}
