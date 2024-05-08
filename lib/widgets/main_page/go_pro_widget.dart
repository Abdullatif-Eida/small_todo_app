import 'package:flutter/material.dart';
import 'package:small_app/ui/colors/app_colors.dart';
import 'package:small_app/ui/images/svg_image.dart';
import 'package:small_app/ui/images/svg_images.dart';
import 'package:small_app/ui/styles/shadows.dart';
import 'package:small_app/ui/styles/text_styles.dart';

class GoProWidget extends StatelessWidget {
  const GoProWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          height: 116,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.thirdColor,
            border: Border.all(
              color: AppColors.secondColor,
              width: 2, // Border width
            ),
            boxShadow: Shadows.boxShadow,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 24, end: 110, top: 36),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SVGImage.loadImage(assetPath: SvgImages.winnerCup, height: 40, width: 53),
                const SizedBox(width: 28.18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Go Pro (No Ads)",
                        style: TextStyles.offerTitleStyle,
                      ),
                      Expanded(
                        child: Text(
                          "No fuss, no ads, for only \$1 a month",
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          style: TextStyles.offerSubTitleStyle,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(end: 24),
            child: Container(
              width: 66,
              height: 71,
              color: AppColors.offerColor,
              alignment: AlignmentDirectional.center,
              child: Text(
                "\$1",
                style: TextStyles.offerStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
