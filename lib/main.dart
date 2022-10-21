import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rootallyai_task/routes/app_pages.dart';
import 'package:rootallyai_task/sharedloger/logger_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
          ),
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(0.8),
          ),
          titleSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
