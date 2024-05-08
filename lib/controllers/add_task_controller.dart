import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:small_app/controllers/main_controller.dart';
import 'package:small_app/models/task.dart';
import 'package:uuid/uuid.dart';

class AddTaskController extends GetxController {
  Rx<TextEditingController> taskController = TextEditingController().obs;
  MainController mainController = Get.find();
  final GetStorage storage = GetIt.I<GetStorage>();
  final Uuid uuid = const Uuid(); // Create a Uuid instance
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void addTask() {
    if (formKey.currentState!.validate()) {
      var newTask = Task(
          id: uuid.v4(), // Generate a new UUID for each task
          name: taskController.value.text,
          createdAt: DateTime.now(),
          isDone: false);
      saveTask(newTask);
      taskController.value.clear();
      Get.back();
    }
  }

  void saveTask(Task task) {
    List<dynamic> tasks = storage.read<List>('tasks') ?? [];
    tasks.add(task.toJson());
    storage.write('tasks', tasks);
    mainController.loadTasks(); // Notify mainController to reload tasks
  }

  @override
  void onClose() {
    taskController.value.dispose(); // Clean up the controller when the widget is disposed
    super.onClose();
  }
}
