import 'package:flutter/material.dart';

enum Axis3D {
  horizontal,
  vertical,
  deep,
}

Axis toAxis2D(Axis3D axis3d) => switch (axis3d) {
      Axis3D.horizontal => Axis.horizontal,
      Axis3D.vertical => Axis.vertical,
      _ => throw Exception('Axis3D.deep is not supported in 2D'),
    };

Axis3D toAxis3D(Axis axis) => switch (axis) {
      Axis.horizontal => Axis3D.horizontal,
      Axis.vertical => Axis3D.vertical,
    };
