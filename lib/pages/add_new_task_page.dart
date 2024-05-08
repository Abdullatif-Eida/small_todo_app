import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:small_app/controllers/add_task_controller.dart';
import 'package:small_app/ui/styles/text_styles.dart';
import 'package:small_app/widgets/text_button_widget.dart';
import 'package:small_app/widgets/text_field_widget.dart';

class AddTaskPage extends GetView<AddTaskController> {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add New Task",
          style: TextStyles.appBarStyle,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: FadeOutDown(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: controller.formKey,
                    child: TextFieldWidget(
                      hintText: "Task Name",
                      controller: controller.taskController.value,
                    ),
                  ),
                  TextButtonWidget(onPressed: () => controller.addTask())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
