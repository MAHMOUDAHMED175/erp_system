import 'package:erp_system/features/login/presentation/view/widgets/form_of_fields_login.dart';
import 'package:erp_system/features/login/presentation/view/widgets/login_button_widgets.dart';
import 'package:erp_system/features/login/presentation/view/widgets/rotate_rectangle.dart';
import 'package:flutter/material.dart';

Widget formLogin(
  BuildContext context, {
  required formKey,
  required emailController,
  required passwordController,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 13.0, top: 13.0, right: 13.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        formOfFieldsLogin(
            context: context,
            emailController: emailController,
            formKey: formKey,
            passwordController: passwordController),
        loginButtonWidget(context: context),
        rotateRectangle(context: context)
      ],
    ),
  );
}
