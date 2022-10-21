import 'package:get/get.dart';
import 'package:rootallyai_task/data/dummy_data.dart';
import 'package:rootallyai_task/view_model/services/database_service.dart';

class HomeController extends GetxController {
  Map data = {};
  bool isLaoding = true;
  int completed = 0;
  int pending = 0;
  int total_data = DummyData.sessionData.length;
  int percentage = DummyData.sessionData.length;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }

  void getData() async {
    data = await DatabaseService.getSessions();
    if (data != null) {
      completed = data.length;
    }
    pending = total_data - completed;
    percentage = ((completed / total_data) * 100).round();
    isLaoding = false;
    update();
  }

  void startSession(String session) async {
    DatabaseService.startSession(session);
    getData();
  }
}
