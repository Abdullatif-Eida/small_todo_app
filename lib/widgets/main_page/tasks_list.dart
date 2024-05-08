import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:small_app/controllers/main_controller.dart';
import 'package:small_app/widgets/no_data.dart';
import 'package:small_app/widgets/task_container_widget.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find<MainController>();
    return Obx(() {
      return Expanded(
        child: controller.tasks.isEmpty
            ? const NoDataWidget()
            : ListView.builder(
                itemCount: controller.tasks.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final task = controller.tasks[index];
                  return TaskContainerWidget(task: task);
                },
              ),
      );
    });
  }
}
