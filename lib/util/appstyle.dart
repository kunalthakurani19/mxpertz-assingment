import 'package:app_design_mx/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle libreBaskerville = GoogleFonts.roboto(
    color: AppColors.white,
  );
  static TextStyle inter = GoogleFonts.roboto(
    color: AppColors.white,
  );

  static bool isCompactView(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static var normalTextSizeStyle = TextStyle(
    // fontFamily: montserratStyle,
    fontSize: 13.dp,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    decoration: TextDecoration.none,
  );
}
