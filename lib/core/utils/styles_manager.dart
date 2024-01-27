import 'package:erp_system/core/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';

abstract class StyleHelper {
  static TextStyle textStyle12Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: ColorManager.textDarkGrayColor,
    );
  }

  static TextStyle textStyle14Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: ColorManager.textDarkGrayColor,
    );
  }

  static TextStyle textStyle16Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: ColorManager.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle16Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: ColorManager.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle16SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: ColorManager.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle18SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: ColorManager.mainLightBlueColor,
    );
  }

  static TextStyle textStyle16Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: ColorManager.mainLightBlueColor,
    );
  }

  static TextStyle textStyle20Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }

  static TextStyle textStyle20SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: ColorManager.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle24SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: ColorManager.mainLightBlueColor,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = calculateScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  return responsiveSize.clamp(fontSize * 0.8, fontSize * 1.2);
}

//fittedBox
//aspectRation
//layoutbuilder
double calculateScaleFactor(BuildContext context) {
  double layoutWidth = MediaQuery.sizeOf(context).width;
  if (Responsive.isMobile(context)) {
    return layoutWidth / 550;
  } else if (Responsive.isTablet(context)) {
    return layoutWidth / 1000;
  } else {
    return layoutWidth / 2500;
  }
}
