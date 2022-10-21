import 'package:flutter/material.dart';
import 'package:rootallyai_task/controllers/home_controller.dart';
import 'package:rootallyai_task/models/enums.dart';
import 'package:rootallyai_task/views/screens/home/widgets/session_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class SessionTimeLine extends StatelessWidget {
  final HomeController controller;

  const SessionTimeLine({Key? key, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          for (int i = 0; i < controller.completed - 1; i++)
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.1,
              isFirst: i == 0,
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: Colors.blue,
                padding: const EdgeInsets.only(right: 6),
                iconStyle: IconStyle(
                  iconData: Icons.check,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              endChild: SessionCard(
                asset: 'assets/rehab1.png',
                title: 'Session ${i + 1}',
                time: controller.data['Session ${i + 1}'],
                status: Status.Completed,
              ),
              beforeLineStyle: const LineStyle(
                color: Colors.blue,
              ),
            ),
          if (controller.completed > 0)
            TimelineTile(
              alignment: TimelineAlign.manual,
              isFirst: controller.completed == 1,
              lineXY: 0.1,
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: Colors.blue,
                padding: const EdgeInsets.only(right: 6),
                iconStyle: IconStyle(
                  iconData: Icons.check,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              endChild: SessionCard(
                asset: 'assets/rehab1.png',
                title: 'Session ${controller.completed}',
                status: Status.OnGoing,
              ),
              beforeLineStyle: const LineStyle(
                color: Colors.blue,
              ),
              afterLineStyle: const LineStyle(
                color: Color(0xFFDADADA),
              ),
            ),
          for (int i = controller.completed + 1;
              i < controller.total_data + 1;
              i++)
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.1,
              isLast: i == (controller.total_data),
              isFirst: i == 1,
              indicatorStyle: const IndicatorStyle(
                width: 20,
                color: Color(0xFFDADADA),
                padding: EdgeInsets.only(right: 6),
              ),
              endChild: SessionCard(
                asset: 'assets/rehab1.png',
                title: 'Session ${i}',
                status: Status.NotCompleted,
              ),
              beforeLineStyle: const LineStyle(
                color: Color(0xFFDADADA),
              ),
            ),
        ],
      ),
    );
  }
}
