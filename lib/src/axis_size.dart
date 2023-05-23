import 'package:flutter/material.dart';

enum AxisSize {
  max,
  min,
}

MainAxisSize? toMainAxisSize(AxisSize? as) => switch (as) {
      AxisSize.max => MainAxisSize.max,
      AxisSize.min => MainAxisSize.min,
      null => null,
    };

StackFit? toStackFit(AxisSize? as) => switch (as) {
      AxisSize.max => StackFit.expand,
      AxisSize.min => StackFit.loose,
      null => null,
    };
