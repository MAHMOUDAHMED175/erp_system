import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/shared/widgets/custom_text_button.dart';
import 'package:erp_system/core/utils/assets_manager.dart';
import 'package:erp_system/core/utils/color_manager.dart';
import 'package:erp_system/core/utils/values_manager.dart';
import 'package:erp_system/features/login/presentation/view/widgets/RPS_custom_painter_login.dart';
import 'package:flutter/material.dart';

Widget registerButtonWidget({required BuildContext context}) {
  return const Padding(
    padding: EdgeInsets.all(2.0),
    child: CustomTextButton(
      backgroundColor: ColorManager.orangeOpacityHex,
      text: "Register",
      textColor: ColorManager.white,
      valueDoubleBorderRadius: 25,
      fontSize: 24,
    ),
  );
}

//1
Widget registerIconWidget({required BuildContext context}) {
  return Stack(alignment: Alignment.topRight, children: [
    SizedBox(
      height: context.height(0.1),
      child: const Row(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p8),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  ImageAssets.googlePlus,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p8),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(ImageAssets.facebook),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p8),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(ImageAssets.twitter),
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      height: context.height(0.13),
      width: context.height(0.2),
      child: CustomPaint(
        painter: RPSCustomPainter(),
        child: const Padding(
          padding: EdgeInsets.only(bottom: 4.0, left: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.arrow_circle_down_outlined,
                  size: 30,
                  color: ColorManager.deepPluralHex,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ]);
}
