import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_k/infrastructure/navigation/navigation.dart';

import 'infrastructure/navigation/routes.dart';

void main() async {
  final initialRoute = await Routes.initialRoute;
  runApp(App(initialRoute: initialRoute));
}

class App extends StatelessWidget {
  final String initialRoute;
  const App({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Navigation.routes,
    );
  }
}
