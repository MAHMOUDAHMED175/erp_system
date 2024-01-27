import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/values_manager.dart';

class FileIconWidget extends StatelessWidget {
  const FileIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: AppSize.s4,
            width: AppSize.s1_5,
            color: ColorManager.containerF1GrayColor,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            alignment: AlignmentDirectional.topStart,
            child: CircleAvatar(
              radius: AppSize.s20,
              backgroundColor: ColorManager.containerF1GrayColor,
              child: Icon(
                Icons.file_open_rounded,
                color: ColorManager.containerF1GrayColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
