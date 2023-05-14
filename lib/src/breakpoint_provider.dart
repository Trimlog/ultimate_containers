import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

class ResponsiveProvider extends InheritedWidget {
  ResponsiveProvider({
    Key? key,
    required this.fss,
    required Widget child,
  }) : super(key: key, child: child);

  final FSS fss;

  @override
  bool updateShouldNotify(ResponsiveProvider oldWidget) {
    return fss != oldWidget.fss;
  }
}
