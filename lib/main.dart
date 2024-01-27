import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:erp_system/core/utils/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/login/presentation/view_model/managers/cubit/cubit.dart';
import 'features/register/presentation/view_model/managers/cubit/cubit.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
      ],
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        // builder: DevicePreview.appBuilder,
        // locale: DevicePreview.locale(context),
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.login,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
