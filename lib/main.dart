import 'package:check_data/state_management/idm_notifier.dart';
import 'package:check_data/ui/pages/auth/login_page.dart';
import 'package:check_data/ui/pages/auth/sign_up_page.dart';
import 'package:check_data/ui/pages/main_menu_page.dart';
import 'package:check_data/ui/pages/splash_page.dart';
import 'package:check_data/utils/theme/theme.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Validation()),
      ChangeNotifierProvider(create: (context) => IDMNotifier()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
