import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

List<UnitBoxShadow> naturalShadow() => [
      // Dense
      UnitBoxShadow(
        color: Color(0xFF556777).withOpacity(0.10),
        offset: UnitOffset(px(0), px(3)),
        speadRadius: px(0),
        blurRadius: px(2),
      ),
      // Diffuse
      UnitBoxShadow(
        color: Color(0xFF556777).withOpacity(0.12),
        offset: UnitOffset(px(0), px(6)),
        speadRadius: px(0),
        blurRadius: px(9),
      ),
    ];
