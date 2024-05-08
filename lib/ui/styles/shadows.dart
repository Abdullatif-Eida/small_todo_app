import 'package:flutter/material.dart';
import 'package:small_app/ui/colors/app_colors.dart';

class Shadows {
  static final List<BoxShadow> boxShadow = [
    BoxShadow(
      color: AppColors.black.withOpacity(0.1),
      offset: const Offset(0, 4),
      blurRadius: 4,
      spreadRadius: 0,
    )
  ];
}
