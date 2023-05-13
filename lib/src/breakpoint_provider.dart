import 'package:flutter/material.dart';
import 'package:flutter_stylesheets/flutter_stylesheets.dart';

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
