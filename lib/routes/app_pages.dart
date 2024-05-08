import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:small_app/bindings/add_task_binding.dart';
import 'package:small_app/bindings/edit_task_binding.dart';
import 'package:small_app/bindings/main_binding.dart';
import 'package:small_app/pages/add_new_task_page.dart';
import 'package:small_app/pages/edit_task_page.dart';
import 'package:small_app/pages/main_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TASK_PAGE,
      page: () => const AddTaskPage(),
      binding: AddTaskBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_TASK_PAGE,
      page: () => const EditTaskPage(),
      binding: EditTaskBinding(),
    ),
  ];
}
