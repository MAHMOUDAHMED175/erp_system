import 'package:erp_system/core/utils/strings_manager.dart';
import 'package:flutter/material.dart';

import '../../features/login/presentation/view/screens/login.dart';

class Routes {
  // static const String splashRoute = "/";
  static const String login = "/Login";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) {
          return Login();
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
