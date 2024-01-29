import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

Widget backgroundForLoginAndRegister(BuildContext context) {
  return Column(
    children: [
      Container(
        height: context.height(0.5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(300),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              ColorManager.red,
              ColorManager.orangeOpacityHex,
              ColorManager.deepPluralHex,
            ],
          ),
        ),
      ),
      Stack(
        children: [
          ClipOval(
            child: Container(
              height: context.height(0.5),
              color: ColorManager.grey200,
            ),
          ),
          Positioned(
            right: -140,
            top: 00,
            left: 300,
            bottom: -30,
            // تحديد الموقع السفلي
            child: ClipOval(
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      ColorManager.red,
                      ColorManager.deepPluralHex,
                      ColorManager.orangeOpacityHex,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
