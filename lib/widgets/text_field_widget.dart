import 'package:flutter/material.dart';

import 'package:small_app/ui/colors/app_colors.dart';
import 'package:small_app/ui/styles/text_styles.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key, required this.hintText, this.minLines, this.maxLines, this.padding, this.keyboardType, this.controller, this.validator});

  final String hintText;
  final int? minLines;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hintText,
            style: TextStyles.textFieldHintTextStyle,
          ),
          const SizedBox(height: 14),
          TextFormField(
            maxLines: maxLines ?? 1,
            minLines: minLines,
            keyboardType: keyboardType,
            controller: controller,
            style: TextStyles.textFieldTextStyle,
            validator: validator ??
                (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a value';
                  }
                  return null;
                },
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9.0),
                borderSide: const BorderSide(
                  color: AppColors.main,
                  width: 2.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9.0),
                borderSide: const BorderSide(
                  color: AppColors.error,
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9.0),
                borderSide: const BorderSide(
                  color: AppColors.error,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9.0),
                borderSide: const BorderSide(
                  color: AppColors.textFieldBorder,
                  width: 2.0,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
            ),
          ),
        ],
      ),
    );
  }
}
