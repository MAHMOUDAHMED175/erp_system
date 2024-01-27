import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';
import '../../utils/values_manager.dart';

Widget DropdownMenuButton({
  required String value,
  required Text hint,
  required bool isExpanded,
  required List<DropdownMenuItem<String>> listOfDropdownMenuItem,
  required void Function(dynamic)? onChange,
}) =>
    Padding(
      padding: EdgeInsets.all(AppPadding.p8),
      child: DropdownButton<String>(
        isExpanded: isExpanded,
        value: value,
        hint: hint,
        items: listOfDropdownMenuItem,
        onChanged: onChange,
        underline: Container(),
        dropdownColor: ColorManager.containerF1GrayColor,
        focusColor: ColorManager.containerF1GrayColor,
        iconSize: 16,
        iconEnabledColor: ColorManager.containerF1GrayColor,
        iconDisabledColor: ColorManager.containerF1GrayColor,
        padding: EdgeInsets.all(AppPadding.p8),
        alignment: Alignment.center,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        // elevation: 5,
        menuMaxHeight: AppSize.s400,
      ),
    );
