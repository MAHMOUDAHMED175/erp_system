abstract class LoginStates {}

class LoginInitStates extends LoginStates {}

class LoginLoadingStates extends LoginStates {}

class LoginSuccessStates extends LoginStates {
  final String uid;

  LoginSuccessStates(this.uid);
}

class LoginErrorStates extends LoginStates {
  final String error;

  LoginErrorStates(this.error);
}

class ChangeVisibilityLoginStates extends LoginStates {}
