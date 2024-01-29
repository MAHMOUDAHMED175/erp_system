import 'dart:math' as math;

import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/functions/navigator.dart';
import 'package:erp_system/core/utils/color_manager.dart';
import 'package:erp_system/core/utils/routes_manager.dart';
import 'package:erp_system/features/login/presentation/view/widgets/RPS_custom_painter_login.dart';
import 'package:flutter/material.dart';

Widget rotateRectangle({required BuildContext context}) {
  return Expanded(
    child: Transform.rotate(
      angle: -math.pi / 1,
      child: Expanded(
        child: SizedBox(
          height: context.height(0.3),
          width: context.width(0.6),
          child: CustomPaint(
            painter: RPSCustomPainter(),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 2, bottom: 2),
                child: IconButton(
                  onPressed: () {
                    navigateTo(context, Routes.register);
                  },
                  icon: Icon(
                    Icons.arrow_circle_up_sharp,
                    size: 35,
                    color: ColorManager.orangeOpacityHex,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
