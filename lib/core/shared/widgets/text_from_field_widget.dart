import 'package:erp_system/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';
import '../../utils/values_manager.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function()? suffixPressd,
  Function()? taped,
  String? Function(String?)? validate,
  bool isPassword = false,
  String? Function(String?)? submit,
  String? Function(String?)? change,
  IconData? suffixIcon,
  required String hintText,
  labelText,
  IconData? prefix,
  Color? fillsColor,
  bool? readOnly,
  BorderRadius? border,
  int? flex,
  required BuildContext context,
  colorSuffixIcon,
}) =>
    TextFormField(
      keyboardType: type,
      controller: controller,
      obscureText: isPassword,
      onFieldSubmitted: (s) {
        submit!(s);
      },
      validator: validate,
      onChanged: change,
      onTap: taped,
      // readOnly: readOnly ?? false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(2),
        hintStyle: StyleHelper.textStyle16Regular(context).copyWith(
          color: ColorManager.textDarkGrayColor,
          fontSize: 22,
        ),
        // focusedBorder: const OutlineInputBorder(
        // borderRadius:
        //     BorderRadius.only(bottomRight: Radius.circular(AppPadding.p8)),
        // borderSide:
        //     BorderSide(width: 0, color: ColorManager.textDarkGrayColor),
        // ),
        // enabledBorder: const OutlineInputBorder(
        // borderRadius: border ?? BorderRadius.circular(AppPadding.p0),
        // borderSide:
        //     BorderSide(width: 0, color: ColorManager.textDarkGrayColor),
        // ),
        // filled: true,
        // fillColor: fillsColor ?? ColorManager.containerF1GrayColor,
        prefixIcon: prefix != null ? Icon(prefix) : null,
        hintText: hintText,
        suffixIcon: suffixIcon != null
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (suffixIcon != null)
                      Container(
                        height: AppSize.s20,
                        width: 1.5,
                        color: ColorManager.textDarkGrayColor,
                      ),
                    if (suffixIcon != null)
                      const SizedBox(
                        width: AppSize.s20,
                      ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width * 0.01,
                      child: IconButton(
                        onPressed: () {
                          suffixPressd!();
                        },
                        icon: Icon(
                          suffixIcon,
                          size: AppSize.s20,
                          color:
                              colorSuffixIcon ?? ColorManager.textDarkGrayColor,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : null,
        labelText: labelText,
        // border: const OutlineInputBorder(),
      ),
    );
