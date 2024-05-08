import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:small_app/controllers/main_controller.dart';
import 'package:small_app/models/task.dart';
import 'package:small_app/routes/app_pages.dart';
import 'package:small_app/ui/colors/app_colors.dart';
import 'package:small_app/ui/icons/svg_icons.dart';
import 'package:small_app/ui/images/svg_image.dart';
import 'package:small_app/ui/styles/shadows.dart';
import 'package:small_app/ui/styles/text_styles.dart';

class TaskContainerWidget extends StatelessWidget {
  final Task task;
  const TaskContainerWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.find();
    return GestureDetector(
      onTap: () => mainController.toggleTaskDone(task.id),
      child: Container(
        height: 91,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 2, color: AppColors.taskContainerBorderColor),
          color: AppColors.white,
          boxShadow: Shadows.boxShadow,
        ),
        padding: const EdgeInsetsDirectional.only(end: 19, start: 23, top: 23, bottom: 23),
        margin: const EdgeInsetsDirectional.only(end: 16, start: 16, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SVGImage.loadImage(
              assetPath: task.isDone ? SvgIcons.checkedCircle : SvgIcons.uncheckedCircle,
              height: 32,
              width: 32,
            ),
            const SizedBox(width: 17),
            Expanded(
              child: Text(
                task.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.taskStyle.copyWith(
                    color: task.isDone ? AppColors.disabledColor : AppColors.offerColor, decoration: task.isDone ? TextDecoration.lineThrough : null),
              ),
            ),
            const SizedBox(width: 10),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.EDIT_TASK_PAGE, arguments: task),
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(border: Border.all(width: 1, color: AppColors.offerColor), borderRadius: BorderRadius.circular(4)),
                    alignment: Alignment.center,
                    child: Text(
                      "Edit",
                      style: TextStyles.editButtonStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
