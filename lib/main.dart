import 'package:check_data/state_management/hive_notifier.dart';
import 'package:check_data/state_management/idm_notifier.dart';
import 'package:check_data/state_management/main_task_notifier.dart';
import 'package:check_data/state_management/sign_up_notifier.dart';
import 'package:check_data/ui/pages/auth/login_page.dart';
import 'package:check_data/ui/pages/auth/sign_up_page.dart';
import 'package:check_data/ui/pages/main_menu/main_menu_page.dart';
import 'package:check_data/ui/pages/splash_page.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Validation()),
      ChangeNotifierProvider(create: (context) => IDMNotifier()),
      ChangeNotifierProvider(create: (context) => SignUpNotifier()),
      ChangeNotifierProvider(create: (context) => HiveNotifier()),
      ChangeNotifierProvider(create: (context) => MainTaskNotifier()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/login': (context) => LoginPage(),
          '/signUp': (context) => SignUpPage(),
          '/mainMenu': (context) => MainMenuPage()
        });
  }
}
