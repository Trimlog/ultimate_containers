import 'package:flutter/material.dart';
import 'package:flutter_fss/src/fss.dart';

class FSSProvider extends InheritedWidget {
  FSSProvider({
    Key? key,
    required this.fss,
    required Widget child,
  }) : super(key: key, child: child);

  final FSS fss;

  @override
  bool updateShouldNotify(FSSProvider oldWidget) {
    return fss != oldWidget.fss;
  }
}
