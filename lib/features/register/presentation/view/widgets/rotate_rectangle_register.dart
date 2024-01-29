import 'dart:math' as math;

import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/functions/navigator.dart';
import 'package:erp_system/core/utils/color_manager.dart';
import 'package:erp_system/core/utils/routes_manager.dart';
import 'package:erp_system/core/utils/styles_manager.dart';
import 'package:erp_system/features/login/presentation/view/widgets/RPS_custom_painter_login.dart';
import 'package:flutter/material.dart';

Widget rotateRectangleRegister({
  required BuildContext context,
}) {
  return Transform.rotate(
    angle: -math.pi / 1,
    child: SizedBox(
      height: context.height(0.2),
      width: context.width(1),
      child: CustomPaint(
        painter: RPSCustomPainter(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Transform.rotate(
                angle: -math.pi / 1,
                child: Text(
                  "LOGO",
                  style: StyleHelper.textStyle16Regular(context)
                      .copyWith(color: ColorManager.black, fontSize: 40),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  navigateTo(context, Routes.login);
                },
                icon: const Icon(
                  Icons.arrow_circle_up_sharp,
                  size: 35,
                  color: ColorManager.orangeOpacityHex,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
