import 'package:check_data/ui/pages/main_menu/main_menu_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

import 'hive_notifier.dart';

class IDMNotifier with ChangeNotifier {
  ///Variable Input
  GlobalKey<FormState> _globalLoginKey = new GlobalKey<FormState>();
  TextEditingController _controllerUserName = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  ///Variable For Widget
  bool _secureText = true;
  bool _autoValidate = false;
  bool _loginProcess = false;
  bool _widgetEnable = true;

  ///Logger
  var logger = Logger();

  ///Getter Setter
  GlobalKey<FormState> get globalLoginKey => _globalLoginKey;

  TextEditingController get controllerUserName => _controllerUserName;

  TextEditingController get controllerPassword => _controllerPassword;

  bool get widgetEnable => _widgetEnable;

  set widgetEnable(bool value) {
    _widgetEnable = value;
    notifyListeners();
  }

  bool get loginProcess => _loginProcess;

  set loginProcess(bool value) {
    _loginProcess = value;
    notifyListeners();
  }

  bool get autoValidate => _autoValidate;

  set autoValidate(bool value) {
    _autoValidate = value;
    notifyListeners();
  }

  bool get secureText => _secureText;

  set secureText(bool value) {
    _secureText = value;
    notifyListeners();
  }

  ///Function
  void showHidePass() {
    _secureText = !_secureText;
    notifyListeners();
  }

  authenticationUser(BuildContext context) async {
    if (_globalLoginKey.currentState!.validate() != false) {
      ///OpenAllBox
      await Provider.of<HiveNotifier>(context, listen: false).openBox(context);
      loginProcess = true;
      _widgetEnable = false;
      _controllerUserName.clear();
      _controllerPassword.clear();
      Get.off(() => MainMenuPage());
      loginProcess = false;
      _widgetEnable = true;
    } else {
      autoValidate = true;
    }
  }
}
