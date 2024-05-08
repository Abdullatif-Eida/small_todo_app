import 'package:get/get.dart';
import 'package:small_app/controllers/edit_task_controller.dart';

class EditTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditTaskController>(
      () => EditTaskController(),
    );

    Get.put<EditTaskController>(
      EditTaskController(),
    );
  }
}
