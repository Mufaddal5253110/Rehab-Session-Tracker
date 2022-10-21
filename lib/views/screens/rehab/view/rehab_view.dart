import 'package:flutter/material.dart';
import 'package:rootallyai_task/data/dummy_data.dart';
import 'package:rootallyai_task/views/screens/rehab/widgets/rehab_banner.dart';
import 'package:rootallyai_task/views/screens/rehab/widgets/rehab_history_card.dart';
import 'package:rootallyai_task/views/screens/rehab/widgets/rehab_history_title.dart';
import 'package:rootallyai_task/views/screens/rehab/widgets/rehab_history_widget.dart';
import 'package:rootallyai_task/views/screens/rehab/widgets/rehab_title.dart';

class RehabView extends StatelessWidget {
  const RehabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const RehabTitle(),
          const RehabBanner(),
          const RehabHistoryTitle(),
          const RehabHistoryWidget(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: DummyData.rehabData.length,
            itemBuilder: ((context, index) {
              final data = DummyData.rehabData[index];
              return RehabHistoryCard(data: data);
            }),
          )
        ],
      ),
    );
  }
}

