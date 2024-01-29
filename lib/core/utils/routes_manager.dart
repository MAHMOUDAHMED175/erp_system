import 'package:erp_system/core/utils/strings_manager.dart';
import 'package:erp_system/features/register/presentation/view/screens/register.dart';
import 'package:flutter/material.dart';

import '../../features/login/presentation/view/screens/login.dart';

class Routes {
  // static const String splashRoute = "/";
  static const String login = "/Login";
  static const String register = "/Register";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) {
          return Login();
        });
      case Routes.register:
        return MaterialPageRoute(builder: (_) {
          return Register();
        });
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
