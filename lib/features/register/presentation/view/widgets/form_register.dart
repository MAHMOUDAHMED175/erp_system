import 'package:erp_system/features/register/presentation/view/widgets/form_of_fields_register.dart';
import 'package:erp_system/features/register/presentation/view/widgets/register_button_icon_widgets.dart';
import 'package:erp_system/features/register/presentation/view/widgets/rotate_rectangle_register.dart';
import 'package:flutter/material.dart';

Widget formRegister(
  BuildContext context, {
  required formKey,
  required emailController,
  required nameController,
  required businessIdController,
  required roleController,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 13.0, bottom: 13.0, right: 13.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        registerIconWidget(context: context),
        rotateRectangleRegister(context: context),
        formOfFieldsRegister(
          context: context,
          formKey: formKey,
          emailController: emailController,
          nameController: nameController,
          businessIdController: businessIdController,
          roleController: roleController,
        ),
      ],
    ),
  );
}
