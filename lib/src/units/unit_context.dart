import 'package:flutter/material.dart';

class UnitContext {
  final BuildContext? context;
  final BoxConstraints? constraints;
  const UnitContext(this.context, this.constraints);
}

class MissingUnitContext implements Exception {
  String cause = 'UnitContext is null. Needs to be specified.';
}

class MissingBuildContext implements Exception {
  String cause = 'UnitContext.context is null. Use in Widget builder and provide BuildContext.';
}

class MissingConstraints implements Exception {
  String cause = 'UnitContext.constraints is null. Use a LayoutBuilder to provide constraints.';
}
