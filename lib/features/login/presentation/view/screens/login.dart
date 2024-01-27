import 'dart:math' as math;

import 'package:erp_system/core/extensions/mediaquery.dart';
import 'package:erp_system/core/shared/widgets/custom_text_button.dart';
import 'package:erp_system/core/shared/widgets/text_from_field_widget.dart';
import 'package:erp_system/core/utils/assets_manager.dart';
import 'package:erp_system/core/utils/styles_manager.dart';
import 'package:erp_system/core/utils/values_manager.dart';
import 'package:erp_system/features/login/presentation/view_model/managers/cubit/cubit.dart';
import 'package:erp_system/features/login/presentation/view_model/managers/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/color_manager.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(listener: (context, state) {
      // if (state is ErrorSocialLoginStates) {
      //   showToast(
      //     text:
      //         //state.error دى رساله من الداتا بيز نفسها
      //         "الايميل غلط يابن الناصح اكتب صح  او الباسورد مش عارف شوف انت!!!",
      //     state: ToastStates.ERROR,
      //   );
      // } else if (state is SuccessSocialLoginStates) {
      //   CachHelper.saveData(key: 'uid', value: state.uid).then((value) {
      //     navigateAndFinish(context, SocialLayout());
      //   });
      // }
    }, builder: (context, state) {
      return Scaffold(
        backgroundColor: ColorManager.grey200,
        body: Stack(
          children: [
            backgroundForLoginAndRegister(context),
            formLogin(context,
                formKey: formKey,
                emailController: emailController,
                passwordController: passwordController),
          ],
        ),
      );
    });
  }
}

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

Widget formLogin(BuildContext context,
    {required formKey, required emailController, required passwordController}) {
  return Padding(
    padding: const EdgeInsets.only(left: 13.0, top: 13.0, right: 13.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        ),
        Stack(alignment: Alignment.bottomLeft, children: [
          Container(
            height: context.height(0.2),
            child: const Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(AppPadding.p8),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        ImageAssets.googlePlus,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(AppPadding.p8),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage(ImageAssets.facebook),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(AppPadding.p8),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage(ImageAssets.twitter),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: context.height(0.3),
            width: double.infinity,
            child: CustomPaint(
              painter: RPSCustomPainter(),
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextButton(
                      backgroundColor: ColorManager.deepPluralHex,
                      text: "Login",
                      textColor: ColorManager.white,
                      valueDoubleBorderRadius: 25,
                      fontSize: 24,
                      // width: context.width(0.2),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.arrow_circle_up_sharp,
                        size: 35,
                        color: ColorManager.deepPluralHex,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        Expanded(
          child: Transform.rotate(
            angle: -math.pi / 1,
            child: Expanded(
              child: SizedBox(
                height: context.height(0.3),
                width: context.width(0.6),
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_circle_up_sharp,
                        size: 40,
                        color: ColorManager.orangeOpacityHex,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Triangle

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.0007583, size.height * -0.0014429);
    path_1.quadraticBezierTo(size.width * 0.2566583, size.height * -0.0027857,
        size.width * 0.0071417, size.height * -0.0028571);
    path_1.cubicTo(
        size.width * -0.1038167,
        size.height * -0.0447714,
        size.width * 0.9693083,
        size.height * 1.2163429,
        size.width * 1.0014083,
        size.height * 0.9981714);
    path_1.quadraticBezierTo(size.width * 0.9991000, size.height * 0.5908143,
        size.width * 1.0007583, size.height * -0.0014429);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
