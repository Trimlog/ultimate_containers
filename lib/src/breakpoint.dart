class Breakpoint {
  late final Map<BreakpointType, double> breakpoints;
  Breakpoint({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
  }) {
    this.breakpoints = {
      if (xs != null) BreakpointType.xs: xs,
      if (sm != null) BreakpointType.sm: sm,
      if (md != null) BreakpointType.md: md,
      if (lg != null) BreakpointType.lg: lg,
      if (xl != null) BreakpointType.xl: xl,
      if (xxl != null) BreakpointType.xxl: xxl,
    };
  }
}

enum BreakpointType {
  xs,
  sm,
  md,
  lg,
  xl,
  xxl,
}
