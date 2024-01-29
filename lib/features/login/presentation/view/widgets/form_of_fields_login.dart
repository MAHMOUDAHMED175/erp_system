import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/shared/widgets/text_from_field_widget.dart';
import 'package:erp_system/core/utils/color_manager.dart';
import 'package:erp_system/core/utils/styles_manager.dart';
import 'package:erp_system/features/login/presentation/view_model/managers/cubit/cubit.dart';
import 'package:flutter/material.dart';

Widget formOfFieldsLogin(
    {required BuildContext context,
    required formKey,
    required emailController,
    required passwordController}) {
  return Container(
    height: context.height(0.5),
    decoration: const BoxDecoration(
      color: ColorManager.white,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
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
              height: 20.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'LOGO',
                style: StyleHelper.textStyle16Regular(context).copyWith(
                  fontSize: 26,
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
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
              height: 15.0,
            ),
            defaultFormField(
              context: context,
              controller: passwordController,
              suffixIcon: LoginCubit.get(context).icons,
              isPassword: LoginCubit.get(context).isPasswordShown,
              suffixPressd: () {
                LoginCubit.get(context).changeVisibility();
              },
              type: TextInputType.visiblePassword,
              submit: (value) {
                if (formKey.currentState!.validate()) {
                  //   LoginCubit.get(context).UserLogin(
                  //       email: emailController.text,
                  //       password: passwordController.text,
                  //   );
                }
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'password is too short';
                }
                return null;
              },
              hintText: 'Password',
              labelText: "Password",
            ),
            const SizedBox(
              height: 20.0,
            ),
            //2
            // ConditionalBuilder(
            //   condition: state is! LoadingLoginStates,
            //   builder: (context) => defaultButton(
            //     text: 'login',
            //     isUppercase: true,
            //     onPressed: () {
            //       if (formKey.currentState.validate()) {
            //         //   Navigator.push(context,MaterialPageRoute(builder:(context)=>NewsLayout() ));
            //         //
            //         LoginCubit.get(context).UserLogin(
            //           email: emailController.text,
            //           password: passwordController.text,
            //         );
            //       }
            //       return null;
            //     },
            //   ),
            //   fallback: (context) => const Center(
            //       child: CircularProgressIndicator()),
            // ),

            TextButton(
              child: Text(
                'Forgot password ?',
                style: StyleHelper.textStyle16Regular(context).copyWith(
                    fontSize: 18, color: ColorManager.textDarkGrayColor),
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             Register()));
              },
            ),
          ],
        ),
      ),
    ),
  );
}
