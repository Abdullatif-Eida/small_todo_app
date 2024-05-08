import 'package:get/get.dart';
import 'package:small_app/controllers/add_task_controller.dart';

class AddTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTaskController>(
      () => AddTaskController(),
    );

    Get.put<AddTaskController>(
      AddTaskController(),
    );
  }
}
