import 'package:get/get.dart';
import 'package:project_k/presentation/presentation.dart';

import 'bindings/bindinds.dart';
import 'routes.dart';

class Navigation {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
  ];
}
