import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:small_app/controllers/main_controller.dart';
import 'package:small_app/ui/colors/app_colors.dart';
import 'package:small_app/ui/styles/text_styles.dart';

class MainPageAppBar extends StatelessWidget {
  const MainPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find<MainController>();
    return Container(
      height: 123,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: AppColors.main,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.15),
            offset: const Offset(0, 4), // Standard vertical offset for elevation
            blurRadius: 4.0, // Mimics 'elevation: 4.0'
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 19),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: CachedNetworkImageProvider(controller.user.imageUrl),
            ),
            const SizedBox(width: 21),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, ${controller.user.name}",
                    style: TextStyles.nameStyle,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Text(
                      controller.user.email,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.emailStyle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
