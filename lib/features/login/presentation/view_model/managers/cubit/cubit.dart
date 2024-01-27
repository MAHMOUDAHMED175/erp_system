import 'package:erp_system/features/login/presentation/view_model/managers/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitStates());
  static LoginCubit get(context) => BlocProvider.of(context);

  bool isPasswordShown = true;
  IconData icons = Icons.visibility_off;
  void changeVisibility() {
    isPasswordShown = !isPasswordShown;
    icons = isPasswordShown ? Icons.visibility_off : Icons.visibility;
    emit(ChangeVisibilityLoginStates());
  }
}
