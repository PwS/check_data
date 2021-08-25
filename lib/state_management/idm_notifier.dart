import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      loginProcess = true;
      _widgetEnable = false;

      Navigator.pushNamed(context, '/mainMenu');
      loginProcess = false;
      _widgetEnable = true;
    } else {
      autoValidate = true;
    }
  }
}
