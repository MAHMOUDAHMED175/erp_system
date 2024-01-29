import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/shared/widgets/custom_text_button.dart';
import 'package:erp_system/core/utils/assets_manager.dart';
import 'package:erp_system/core/utils/color_manager.dart';
import 'package:erp_system/core/utils/values_manager.dart';
import 'package:erp_system/features/login/presentation/view/widgets/RPS_custom_painter_login.dart';
import 'package:flutter/material.dart';

Widget loginButtonWidget({required BuildContext context}) {
  return Stack(alignment: Alignment.bottomLeft, children: [
    Container(
      height: context.height(0.2),
      child: const Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
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
      height: context.height(0.3),
      width: double.infinity,
      child: CustomPaint(
        painter: RPSCustomPainter(),
        child: const Padding(
          padding: EdgeInsets.only(right: 1, bottom: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 30,
              ),
              CustomTextButton(
                backgroundColor: ColorManager.deepPluralHex,
                text: "Login",
                textColor: ColorManager.white,
                valueDoubleBorderRadius: 25,
                fontSize: 24,
// width: context.width(0.2),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.arrow_circle_up_sharp,
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
