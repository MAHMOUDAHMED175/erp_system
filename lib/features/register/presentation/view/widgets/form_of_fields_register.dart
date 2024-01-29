import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/shared/widgets/text_from_field_widget.dart';
import 'package:erp_system/core/utils/color_manager.dart';
import 'package:erp_system/features/register/presentation/view/widgets/register_button_icon_widgets.dart';
import 'package:flutter/material.dart';

Widget formOfFieldsRegister({
  required BuildContext context,
  required GlobalKey<FormState> formKey,
  required emailController,
  required nameController,
  required businessIdController,
  required roleController,
}) {
  return Container(
    height: context.height(0.64),
    decoration: const BoxDecoration(
      color: ColorManager.white,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5.0,
            ),
            defaultFormField(
              context: context,
              controller: emailController,
              hintText: 'email',
              labelText: "email",
              suffixIcon: Icons.email,
              colorSuffixIcon: ColorManager.textDarkGrayColor,
              type: TextInputType.emailAddress,
              submit: (value) {
                // if (formKey.currentState!.validate()) {}
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'email must not be empty';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            defaultFormField(
              context: context,
              controller: nameController,
              hintText: 'name',
              labelText: "name",
              suffixIcon: Icons.person,
              colorSuffixIcon: ColorManager.textDarkGrayColor,
              type: TextInputType.text,
              submit: (value) {
                if (formKey.currentState!.validate()) {}
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'name must not be empty';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            defaultFormField(
              context: context,
              controller: businessIdController,
              hintText: 'businessId',
              labelText: "businessId",
              suffixIcon: Icons.home,
              colorSuffixIcon: ColorManager.textDarkGrayColor,
              type: TextInputType.text,
              submit: (value) {
                // if (formKey.currentState!.validate()) {}
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'businessId must not be empty';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            defaultFormField(
              context: context,
              controller: roleController,
              hintText: 'role',
              labelText: "role",
              suffixIcon: Icons.rotate_left,
              colorSuffixIcon: ColorManager.textDarkGrayColor,
              type: TextInputType.text,
              submit: (value) {
                // if (formKey.currentState!.validate()) {}
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'role must not be empty';
                }

                return null;
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                registerButtonWidget(context: context),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
