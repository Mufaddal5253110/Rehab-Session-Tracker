import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootallyai_task/controllers/home_controller.dart';

class StartSessionButton extends StatelessWidget {
  const StartSessionButton({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.startSession("Session ${controller.completed + 1}");
      },
      child: Container(
        width: Get.width * 0.9,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 40,
            ),
            const SizedBox(width: 10),
            Text(
              "Start Session",
              style: Get.textTheme.titleSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
