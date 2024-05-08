import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:small_app/controllers/main_controller.dart';
import 'package:small_app/widgets/main_page/floating_action_button.dart';
import 'package:small_app/widgets/main_page/go_pro_widget.dart';
import 'package:small_app/widgets/main_page/main_page_appbar.dart';
import 'package:small_app/widgets/main_page/tasks_list.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MainPageAppBar(),
          GoProWidget(),
          TasksList(),
        ],
      )),
      floatingActionButton: FloatingActionButtonWidget(),
    );
  }
}
