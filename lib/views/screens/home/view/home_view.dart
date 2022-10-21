import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootallyai_task/controllers/home_controller.dart';
import 'package:rootallyai_task/views/screens/home/widgets/home_progress_card.dart';
import 'package:rootallyai_task/views/screens/home/widgets/home_title.dart';
import 'package:rootallyai_task/views/screens/home/widgets/sessions_time_line.dart';
import 'package:rootallyai_task/views/screens/home/widgets/start_session_btn.dart';
// import 'package:timelines/timelines.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return SafeArea(
            child: controller.isLaoding == true
                ? const Center(child: CircularProgressIndicator())
                : Stack(
                    children: [
                      ListView(
                        children: [
                          const HomeTitle(),
                          HomeProgressCard(controller: controller),
                          SessionTimeLine(controller: controller),
                          const SizedBox(height: 90),
                        ],
                      ),
                      Positioned(
                        bottom: 20,
                        left: Get.width * 0.05,
                        child: StartSessionButton(controller: controller),
                      )
                    ],
                  ),
          );
        });
  }
}

