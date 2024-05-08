import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:small_app/controllers/edit_task_controller.dart';
import 'package:small_app/ui/styles/text_styles.dart';
import 'package:small_app/widgets/text_button_widget.dart';
import 'package:small_app/widgets/text_field_widget.dart';

class EditTaskPage extends GetView<EditTaskController> {
  const EditTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit Task",
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
                    child: Obx(() {
                      return TextFieldWidget(
                        hintText: "Task Name",
                        controller: controller.taskController.value,
                      );
                    }),
                  ),
                  TextButtonWidget(onPressed: () => controller.updateTask())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
