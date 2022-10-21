import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RehabTitle extends StatelessWidget {
  const RehabTitle({
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
      child: Text(
        "Rehab Programme",
        style: Get.textTheme.titleMedium,
        textAlign: TextAlign.left,
      ),
    );
  }
}
