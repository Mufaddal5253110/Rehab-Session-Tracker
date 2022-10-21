import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.7,
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: 20),
      child: Text(
        "Good Morning Jane",
        style: Get.textTheme.titleLarge,
        textAlign: TextAlign.left,
      ),
    );
  }
}
