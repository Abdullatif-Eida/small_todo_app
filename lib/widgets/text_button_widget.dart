import 'package:flutter/material.dart';
import 'package:small_app/ui/colors/app_colors.dart';
import 'package:small_app/ui/styles/text_styles.dart';
import 'package:small_app/widgets/inner_shadow.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, this.onPressed});

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InnerShadow(
      blur: 1,
      color: AppColors.innerShadow.withOpacity(0.5),
      offset: const Offset(0, 3),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(vertical: 20.0),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  AppColors.main, // Background color
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(
                      color: AppColors.hintColor, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(6), // No corner radius
                  ),
                ),
                shadowColor: MaterialStateProperty.all<Color>(
                  Colors.black.withOpacity(0.25), // Drop shadow color with opacity
                ),
                elevation: MaterialStateProperty.all<double>(4.0), // Elevation for drop shadow
              ),
              child: Text(
                'Done',
                style: TextStyles.buttonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
