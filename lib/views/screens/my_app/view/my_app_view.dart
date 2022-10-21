import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootallyai_task/controllers/my_app_controller.dart';
import 'package:rootallyai_task/views/screens/home/view/home_view.dart';
import 'package:rootallyai_task/views/screens/my_app/widgets/bottom_widget.dart';
import 'package:rootallyai_task/views/screens/practice/view/practice_view.dart';
import 'package:rootallyai_task/views/screens/profile/view/profile_view.dart';
import 'package:rootallyai_task/views/screens/rehab/view/rehab_view.dart';

class MyAppView extends StatelessWidget {
  MyAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAppController>(
      init: MyAppController(),
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              // onPageChanged: (value) {
              //   // setState(() {
              //   //   _selectedIndex = value;
              //   // });
              // },
              controller: controller.pageController,
              children: const <Widget>[
                HomeView(),
                RehabView(),
                PracticeView(),
                ProfileView(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade200,
          child: SizedBox(
            height: Get.height * 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BottomWidget(
                  onTap: controller.changePage,
                  currentIndex: controller.selectedIndex,
                  myIndex: 0,
                  title: "Home",
                  icon: Icons.calendar_month_rounded,
                ),
                BottomWidget(
                  onTap: controller.changePage,
                  currentIndex: controller.selectedIndex,
                  myIndex: 1,
                  title: "Rehab",
                  icon: Icons.directions_walk_sharp,
                ),
                BottomWidget(
                  onTap: controller.changePage,
                  currentIndex: controller.selectedIndex,
                  myIndex: 2,
                  title: "Practice",
                  icon: Icons.location_searching_rounded,
                ),
                BottomWidget(
                  onTap: controller.changePage,
                  currentIndex: controller.selectedIndex,
                  myIndex: 3,
                  title: "Profile",
                  icon: Icons.person,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
