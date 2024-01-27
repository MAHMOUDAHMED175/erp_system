import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';
import '../../utils/styles_manager.dart';
import '../../utils/values_manager.dart';
//  in core/shared/Widget/

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.valueDoubleBorderRadius,
    required this.text,
    this.fontSize,
    this.heightButton,
    this.onPressed,
    this.width,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double? valueDoubleBorderRadius;
  final double? fontSize;
  final double? width;
  final double? heightButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton ?? AppSize.s40,
      width: width ?? 100,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: ColorManager.containerF1GrayColor, width: 1.0),
            // إضافة حدود سوداء بسمك 2 بكسل

            borderRadius: BorderRadius.circular(
              valueDoubleBorderRadius ?? AppPadding.p12,
            ),
          ),
        ),
        child: Text(text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: StyleHelper.textStyle14Regular(context)
            // getLightStyle(
            //     color: textColor,
            //     fontSize: fontSize!,
            //   )
            ),
      ),
    );
  }
}
