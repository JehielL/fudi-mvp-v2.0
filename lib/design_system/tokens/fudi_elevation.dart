import 'package:flutter/material.dart';

abstract final class FudiElevation {
  static const none = <BoxShadow>[];
  static const raised = [
    BoxShadow(color: Color(0x18000000), blurRadius: 12, offset: Offset(0, 4)),
  ];
  static const overlay = [
    BoxShadow(color: Color(0x30000000), blurRadius: 24, offset: Offset(0, 8)),
  ];
  static const scrim = Color(0x99000000);
}
