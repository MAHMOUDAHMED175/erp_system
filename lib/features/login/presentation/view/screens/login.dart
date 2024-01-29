import 'package:erp_system/features/login/presentation/view/widgets/background_for_login_and_register.dart';
import 'package:erp_system/features/login/presentation/view/widgets/form_login.dart';
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
