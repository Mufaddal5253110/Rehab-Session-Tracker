import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RehabHistoryTitle extends StatelessWidget {
  const RehabHistoryTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: EdgeInsets.only(
        left: Get.width * 0.05,
        right: Get.width * 0.05,
        top: 20,
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "History",
            style: Get.textTheme.titleMedium,
            textAlign: TextAlign.left,
          ),
          Icon(
            Icons.filter_alt,
            color: Colors.black.withOpacity(0.8),
            size: 30,
          ),
        ],
      ),
    );
  }
}

