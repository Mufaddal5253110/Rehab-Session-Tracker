import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rootallyai_task/views/screens/my_app/view/my_app_view.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.MYAPP;

  static final routes = [
    GetPage(
      name: Routes.MYAPP,
      page: () => MyAppView(),
    ),
  ];
}