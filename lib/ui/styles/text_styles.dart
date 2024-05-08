import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:small_app/ui/colors/app_colors.dart';

class TextStyles {
  static final TextStyle nameStyle = GoogleFonts.roboto(
    fontSize: 16,
    height: 18 / 12,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static final TextStyle emailStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w100,
    fontStyle: FontStyle.italic,
    fontSize: 22,
    height: 1.0584,
    color: AppColors.white,
  );

  static final TextStyle offerTitleStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    height: 19.05 / 18,
    color: AppColors.offerColor,
  );

  static final TextStyle offerSubTitleStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 12.7 / 12,
    color: AppColors.hintColor,
  );

  static final TextStyle offerStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w500, // 500 corresponds to medium
    fontSize: 18,
    height: 19.05 / 18, // Line height to font size ratio
    color: AppColors.offerTextColor,
  );

  static final TextStyle taskStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 16.08 / 16,
    color: AppColors.offerColor,
  );

  static final TextStyle editButtonStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w500, // 500 corresponds to medium weight
    fontSize: 16,
    height: 18.75 / 16, // Line height to font size ratio
    color: AppColors.offerColor,
  );

  static final TextStyle appBarStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w500, // Medium weight is often represented as 500
    fontSize: 24.0, // Font size in pixels
    height: 28.13 / 24, // Line height divided by font size gives the 'height' multiplier
  );

  static final TextStyle textFieldHintTextStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.w400, // Normal weight is often represented as 400
    fontSize: 16.0, // Font size in pixels
    height: 19.44 / 16, // Line height divided by font size gives the 'height' multiplier
    letterSpacing: 0.25 * 1.15, // Letter spacing in pixels (calculated as percentage of font size)
    color: AppColors.black,
  );

  static final TextStyle textFieldTextStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.normal, // 400 corresponds to normal weight
    fontSize: 20.0, // Font size in pixels
    height: 24.3 / 20, // Line height divided by font size gives the 'height' multiplier
    color: AppColors.hintColor,
  );

  static final TextStyle buttonTextStyle = GoogleFonts.roboto(
    fontWeight: FontWeight.normal, // 400 corresponds to normal weight
    fontSize: 18.0, // Font size in pixels
    color: AppColors.white,
  );
}
