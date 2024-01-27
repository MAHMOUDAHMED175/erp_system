import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/shared/widgets/text_from_field_widget.dart';
import '../../view_model/managers/cubit/cubit.dart';
import '../../view_model/managers/cubit/states.dart';

class Register extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => RegisterCubit(),
        child: BlocConsumer<RegisterCubit, RegisterStates>(
          listener: (context, state) {
            // if(state is CreateUserSuccessState){
            //   navigateAndFinish(context, Login());
            // }
          },
          builder: (context, state) {
            return Scaffold(
              // backgroundColor: HexColor('#B5AEA8'),

              appBar: AppBar(
                // backgroundColor: HexColor('#B5AEA8'),

                title: Text(
                  'TASAOQ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey.withOpacity(0.9),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.grey[350],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'REGISTER',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              defaultFormField(
                                controller: nameController,
                                labelText: 'UserName',
                                prefix: Icons.person,
                                submit: (value) {
                                  if (formKey.currentState!.validate()) {}
                                },
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'userName must not be empty';
                                  }
                                },
                                type: TextInputType.name,
                                hintText: 'name',
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              defaultFormField(
                                controller: emailController,
                                labelText: 'Email',
                                prefix: Icons.email,
                                type: TextInputType.emailAddress,
                                submit: (value) {
                                  if (formKey.currentState!.validate()) {}
                                },
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'email must not be empty';
                                  }

                                  return null;
                                },
                                hintText: 'email',
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              defaultFormField(
                                controller: passwordController,
                                labelText: 'Password',
                                prefix: Icons.lock,
                                suffixIcon:
                                    RegisterCubit.get(context).suffixIcon,
                                isPassword:
                                    RegisterCubit.get(context).isPassword,
                                suffixPressd: () {
                                  // setState(()
                                  // {
                                  //   RegisterCubit.get(context).changePasswordVisibility();
                                  // });
                                },
                                type: TextInputType.visiblePassword,
                                submit: (value) {
                                  if (formKey.currentState!.validate()) {}
                                },
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'password is too short';
                                  }
                                  return null;
                                },
                                hintText: 'password',
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              defaultFormField(
                                controller: phoneController,
                                labelText: 'Phone',
                                prefix: Icons.phone,
                                type: TextInputType.phone,
                                submit: (value) {
                                  if (formKey.currentState!.validate()) {}
                                },
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'phone must not be empty';
                                  }

                                  return null;
                                },
                                hintText: 'phone',
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              // ConditionalBuilder(
                              //   condition: state is! RegisterLoadingState,
                              //   builder:(context)=> defaultButton(
                              //     text: 'REGISTER',
                              //     onPressed: ()
                              //     {
                              //
                              //       if(formKey.currentState.validate())
                              //       {
                              //          RegisterCubit.get(context).userRegister(
                              //             name: nameController.text,
                              //             email: emailController.text,
                              //             password: passwordController.text,
                              //             phone: phoneController.text
                              //         );
                              //
                              //       navigateAndFinish(context,Login() );
                              //       }
                              //     },
                              //   ),
                              //   fallback: (context)=>const Center(child: CircularProgressIndicator()),
                              //
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
