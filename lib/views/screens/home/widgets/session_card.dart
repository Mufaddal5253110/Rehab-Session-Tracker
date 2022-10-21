import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootallyai_task/models/enums.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
    required this.asset,
    required this.title,
    required this.status,
    this.time = "",
  }) : super(key: key);

  final String asset;
  final String title;
  final Status status;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: Get.width * 0.05, top: 20),
          padding: const EdgeInsets.only(
            right: 10.0,
            top: 10,
            bottom: 10,
            left: 15,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: 2),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(2, 2),
              ),
              const BoxShadow(
                color: Colors.white,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(-2, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: Get.width * 0.35,
                      child: Opacity(
                        opacity: status == Status.Completed ? 0.5 : 1,
                        child: Text(
                          title,
                          style: Get.textTheme.titleMedium!.copyWith(
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    if (status == Status.Completed) ...[
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 18,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: const Text(
                            "Completed",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Performed At",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          time,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                    if (status == Status.OnGoing) ...[
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 18,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow.shade700,
                        ),
                        child: const Text(
                          "Performed",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Enter Pain Score",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: Get.width * 0.3,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.restart_alt,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18.0,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Retry",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                    if (status == Status.NotCompleted) ...[
                      const SizedBox(height: 5),
                      SizedBox(
                        width: Get.width * 0.3,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18.0,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Opacity(
                child: Image.asset(
                  asset,
                  width: Get.width * 0.3,
                  height: 130,
                  fit: BoxFit.cover,
                ),
                opacity: status == Status.Completed ? 0.5 : 1,
              ),
            ],
          ),
        ),
        if (status == Status.OnGoing)
          Positioned(
            top: 10,
            right: (Get.width * 0.05 - 10),
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          )
      ],
    );
  }
}
