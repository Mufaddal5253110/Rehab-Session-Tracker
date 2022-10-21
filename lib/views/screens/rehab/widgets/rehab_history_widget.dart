import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RehabHistoryWidget extends StatelessWidget {
  const RehabHistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: Get.width * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Total Sessions",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.fitness_center,
                      size: 30,
                      color: Colors.blue,
                    ),
                    Text(
                      "16",
                      style: Get.textTheme.titleMedium,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 2,
            height: 30,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            width: Get.width * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Total Time",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.watch_later,
                      size: 30,
                      color: Colors.blue,
                    ),
                    Text(
                      "16",
                      style: Get.textTheme.titleMedium,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
