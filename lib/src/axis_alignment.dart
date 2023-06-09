import 'package:flutter/widgets.dart';

enum AxisAlignment {
  start,
  end,
  center,
  spaceBetween,
  spaceAround,
  spaceEvenly,
  baseline,
}

MainAxisAlignment toMainAxisAlignment(AxisAlignment? aa) => switch (aa) {
      AxisAlignment.start => MainAxisAlignment.start,
      AxisAlignment.end => MainAxisAlignment.end,
      AxisAlignment.center => MainAxisAlignment.center,
      AxisAlignment.spaceBetween => MainAxisAlignment.spaceBetween,
      AxisAlignment.spaceAround => MainAxisAlignment.spaceAround,
      AxisAlignment.spaceEvenly => MainAxisAlignment.spaceEvenly,
      AxisAlignment.baseline => throw MainAxisAlignmentCannotHaveBaseline(),
      null => MainAxisAlignment.start,
    };

CrossAxisAlignment toCrossAxisAlignment(AxisAlignment? aa) => switch (aa) {
      AxisAlignment.start => CrossAxisAlignment.start,
      AxisAlignment.end => CrossAxisAlignment.end,
      AxisAlignment.center => CrossAxisAlignment.center,
      AxisAlignment.spaceBetween => throw CrossAxisAlignmentCannotHaveSpaceBetween(),
      AxisAlignment.spaceAround => throw CrossAxisAlignmentCannotHaveSpaceAround(),
      AxisAlignment.spaceEvenly => throw CrossAxisAlignmentCannotHaveSpaceEvenly(),
      AxisAlignment.baseline => CrossAxisAlignment.baseline,
      null => CrossAxisAlignment.start,
    };

AlignmentDirectional toAlignmentDirectional(AxisAlignment? vertical, AxisAlignment? horizontal) {
  final double x = switch (horizontal) {
    AxisAlignment.start => -1,
    AxisAlignment.center => 0,
    AxisAlignment.end => 1,
    AxisAlignment.spaceBetween => throw AxisAlignmentConversionError(),
    AxisAlignment.spaceAround => throw AxisAlignmentConversionError(),
    AxisAlignment.spaceEvenly => throw AxisAlignmentConversionError(),
    AxisAlignment.baseline => throw AxisAlignmentConversionError(),
    null => -1,
  };

  final double y = switch (vertical) {
    AxisAlignment.start => -1,
    AxisAlignment.center => 0,
    AxisAlignment.end => 1,
    AxisAlignment.spaceBetween => throw AxisAlignmentConversionError(),
    AxisAlignment.spaceAround => throw AxisAlignmentConversionError(),
    AxisAlignment.spaceEvenly => throw AxisAlignmentConversionError(),
    AxisAlignment.baseline => throw AxisAlignmentConversionError(),
    null => -1,
  };

  return AlignmentDirectional(x, y);
}

class AxisAlignmentConversionError extends Error {
  final message = 'AxisAlignment can only have start, end, or center for both vertical and horizontal';
}

class MainAxisAlignmentCannotHaveBaseline extends Error {
  final message = 'AxisAlignment.baseline cannot be used with MainAxisAlignment';
}

class CrossAxisAlignmentCannotHaveSpaceBetween extends Error {
  final message = 'AxisAlignment.spaceBetween cannot be used with CrossAxisAlignment';
}

class CrossAxisAlignmentCannotHaveSpaceAround extends Error {
  final message = 'AxisAlignment.spaceAround cannot be used with CrossAxisAlignment';
}

class CrossAxisAlignmentCannotHaveSpaceEvenly extends Error {
  final message = 'AxisAlignment.spaceEvenly cannot be used with CrossAxisAlignment';
}
