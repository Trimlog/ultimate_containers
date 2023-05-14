import 'package:flutter/widgets.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class Breakpoints {
  late final Map<Breakpoint, double> breakpoints;
  Breakpoints({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    this.breakpoints = {
      if (xs != null) Breakpoint.xs: xs,
      if (sm != null) Breakpoint.sm: sm,
      if (md != null) Breakpoint.md: md,
      if (lg != null) Breakpoint.lg: lg,
      if (xl != null) Breakpoint.xl: xl,
      if (xxl != null) Breakpoint.xxl: xxl,
    };
  }
  static Breakpoints? of(BuildContext context) {
    final breakpointProvider = context.dependOnInheritedWidgetOfExactType<BreakpointsProvider>();
    return breakpointProvider?.breakpoints;
  }

  static Breakpoints basic() => Breakpoints(
        xs: 0,
        sm: 576,
        md: 768,
        lg: 992,
        xl: 1200,
        xxl: 1400,
      );

  Breakpoint getBreakpoint(BuildContext context) {
    final mqd = MediaQuery.of(context);
    if (breakpoints[Breakpoint.xxl] != null && mqd.size.width >= breakpoints[Breakpoint.xxl]!) return Breakpoint.xxl;
    if (breakpoints[Breakpoint.xl] != null && mqd.size.width >= breakpoints[Breakpoint.xl]!) return Breakpoint.xl;
    if (breakpoints[Breakpoint.lg] != null && mqd.size.width >= breakpoints[Breakpoint.lg]!) return Breakpoint.lg;
    if (breakpoints[Breakpoint.md] != null && mqd.size.width >= breakpoints[Breakpoint.md]!) return Breakpoint.md;
    if (breakpoints[Breakpoint.sm] != null && mqd.size.width >= breakpoints[Breakpoint.sm]!) return Breakpoint.sm;
    return Breakpoint.xs;
  }
}

enum Breakpoint {
  xs,
  sm,
  md,
  lg,
  xl,
  xxl,
}
