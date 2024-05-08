import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:small_app/controllers/main_controller.dart';
import 'package:small_app/models/task.dart';

class EditTaskController extends GetxController {
  Rx<TextEditingController> taskController = TextEditingController().obs;
  late Task currentTask;
  MainController mainController = Get.find();
  final GetStorage storage = GetIt.I<GetStorage>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
    Task task = Get.arguments as Task; // Retrieve the passed task
    loadTask(task);
  }

  // Load task data into the TextEditingController
  void loadTask(Task task) {
    currentTask = task;
    taskController.value.text = task.name;
  }

  // Update the task with new information
  void updateTask() {
    if (formKey.currentState!.validate()) {
      currentTask.name = taskController.value.text;
      currentTask.createdAt = DateTime.now(); // Optionally update the date
      saveTask();
    }
  }

  // Save the updated task back to storage
  void saveTask() {
    List<dynamic> tasks = storage.read<List>('tasks') ?? [];
    int index = tasks.indexWhere((t) => Task.fromJson(Map<String, dynamic>.from(t)).id == currentTask.id);
    if (index != -1) {
      tasks[index] = currentTask.toJson();
      storage.write('tasks', tasks);
      mainController.loadTasks();
      Get.back(); // Close the edit task page or modal
    }
  }

  @override
  void onClose() {
    taskController.value.dispose(); // Clean up the controller when the widget is disposed
    super.onClose();
  }
}
