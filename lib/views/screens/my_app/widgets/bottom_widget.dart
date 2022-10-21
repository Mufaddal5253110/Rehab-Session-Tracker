import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomWidget extends StatelessWidget {
  final Function onTap;
  final int currentIndex;
  final int myIndex;
  final String title;
  final IconData icon;
  const BottomWidget({
    Key? key,
    required this.onTap,
    required this.currentIndex,
    required this.myIndex,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => onTap(myIndex)),
      child: SizedBox(
        width: Get.width * 0.15,
        child: Column(
          children: [
            if (myIndex == currentIndex)
              Container(
                width: Get.width * 0.12,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            const SizedBox(height: 5),
            Icon(
              icon,
              color: myIndex == currentIndex
                  ? Colors.black.withOpacity(0.8)
                  : Colors.grey.shade600,
            ),
            const SizedBox(height: 3),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: myIndex == currentIndex
                    ? Colors.black.withOpacity(0.8)
                    : Colors.grey.shade600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
