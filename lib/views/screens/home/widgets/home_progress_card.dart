import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootallyai_task/controllers/home_controller.dart';

class HomeProgressCard extends StatelessWidget {
  const HomeProgressCard({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: const EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today's Progress",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "${controller.percentage}%",
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Container(
            height: 10,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: (controller.percentage / 100.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_box_rounded,
                      color: Colors.green,
                      size: 33,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${controller.completed} Sessions",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_circle_right,
                      color: Colors.blue,
                      size: 33,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pending",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "${controller.pending} Sessions",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
