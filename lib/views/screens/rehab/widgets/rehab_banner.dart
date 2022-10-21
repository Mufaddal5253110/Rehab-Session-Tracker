import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RehabBanner extends StatelessWidget {
  const RehabBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("assets/banner.png"),
      ),
    );
  }
}

