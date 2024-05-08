import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:small_app/routes/app_pages.dart';
import 'package:small_app/ui/colors/app_colors.dart';
import 'package:small_app/ui/icons/svg_icons.dart';
import 'package:small_app/ui/images/svg_image.dart';
import 'package:small_app/ui/styles/shadows.dart';
import 'package:small_app/widgets/inner_shadow.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InnerShadow(
      blur: 1,
      color: AppColors.innerShadow.withOpacity(0.5),
      offset: const Offset(0, 3),
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.ADD_TASK_PAGE),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              boxShadow: Shadows.boxShadow,
              shape: BoxShape.circle,
              color: AppColors.main,
              border: Border.all(color: AppColors.flatActionButtonBorderColor, width: 2)),

          child: SVGImage.loadImage(
            assetPath: SvgIcons.addIcon,
          ), // Shadow Y offset and Blur as drop shadow
        ),
      ),
    );
  }
}
