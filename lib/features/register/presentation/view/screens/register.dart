import 'package:erp_system/features/login/presentation/view/widgets/background_for_login_and_register.dart';
import 'package:erp_system/features/register/presentation/view/widgets/form_register.dart';
import 'package:erp_system/features/register/presentation/view_model/managers/cubit/cubit.dart';
import 'package:erp_system/features/register/presentation/view_model/managers/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/color_manager.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var businessIdController = TextEditingController();
  var roleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorManager.grey200,
            body: Stack(
              children: [
                backgroundForLoginAndRegister(context),
                formRegister(
                  context,
                  formKey: formKey,
                  emailController: emailController,
                  nameController: nameController,
                  businessIdController: businessIdController,
                  roleController: roleController,
                ),
              ],
            ),
          );
        });
  }
}
