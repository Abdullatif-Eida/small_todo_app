import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:small_app/models/task.dart';
import 'package:small_app/models/user.dart';

class MainController extends GetxController {
  final GetStorage storage = GetIt.I<GetStorage>();
  var tasks = <Task>[].obs;

  final User _user = User(
    name: 'Abdullatif Eida',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-df078.appspot.com/o/profilepic.jpg?alt=media&token=40c02516-55ea-4c13-a265-66c57cadbd02',
    email: 'mhdabdullatif2016@gmail.com',
  );

  User get user => _user;

  void loadTasks() {
    final tasksJson = storage.read<List>('tasks') ?? [];
    tasks.value = tasksJson.map((e) => Task.fromJson(Map<String, dynamic>.from(e))).toList();
  }

  void toggleTaskDone(String taskId) {
    var taskIndex = tasks.indexWhere((t) => t.id == taskId);
    if (taskIndex != -1) {
      tasks[taskIndex].isDone = !tasks[taskIndex].isDone; // Toggle the completion status
      saveTasks(); // Save the updated list back to storage
    }
  }

  void saveTasks() {
    final tasksJson = tasks.map((t) => t.toJson()).toList();
    storage.write('tasks', tasksJson);
    loadTasks();
  }

  @override
  void onInit() {
    super.onInit();
    loadTasks();
  }
}
