import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class BreakpointsProvider extends InheritedWidget {
  BreakpointsProvider({
    Key? key,
    Breakpoints? breakpoints,
    required Widget child,
  }) : super(key: key, child: child) {
    this.breakpoints = breakpoints ?? Breakpoints.basic();
  }

  late final Breakpoints breakpoints;

  @override
  bool updateShouldNotify(BreakpointsProvider oldWidget) {
    return breakpoints != oldWidget.breakpoints;
  }
}

class BreakpointsProviderBuilder extends StatelessWidget {
  const BreakpointsProviderBuilder({
    Key? key,
    this.breakpoints,
    required this.builder,
  }) : super(key: key);

  final Breakpoints? breakpoints;
  final Widget Function(BuildContext) builder;

  @override
  Widget build(BuildContext context) {
    return BreakpointsProvider(
      breakpoints: breakpoints,
      child: Builder(
        builder: builder,
      ),
    );
  }
}
