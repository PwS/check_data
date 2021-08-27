import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

class SignUpNotifier with ChangeNotifier {
  ///Variable Input
  GlobalKey<FormState> _globalSignUpKey = new GlobalKey<FormState>();
  TextEditingController _controllerUserName = TextEditingController();
  TextEditingController _controllerNIK = TextEditingController();
  TextEditingController _controllerGender = TextEditingController();
  TextEditingController _controllerPhoneNumber = TextEditingController();
  TextEditingController _controllerUserAddress = TextEditingController();

  bool _signUpProcess = false;

  ///Logger
  var logger = Logger();

  ///Getter Setter

  GlobalKey<FormState> get globalSignUpKey => _globalSignUpKey;

  TextEditingController get controllerUserName => _controllerUserName;

  TextEditingController get controllerNIK => _controllerNIK;

  TextEditingController get controllerGender => _controllerGender;

  TextEditingController get controllerPhoneNumber => _controllerPhoneNumber;

  TextEditingController get controllerUserAddress => _controllerUserAddress;

  bool get signUpProcess => _signUpProcess;

  signUpUser(BuildContext context) async {
    if (_globalSignUpKey.currentState!.validate() != false) {
      _signUpProcess = true;
      logger.i(
          'Value For SignUp is NAMA ${_controllerUserName.text} NIK ${_controllerUserName.text} Jenis Kelamin ${_controllerGender.text} No Hp ${_controllerPhoneNumber.text} Alamat ${_controllerUserAddress.text}');
      Navigator.pop(context);
      _signUpProcess = false;
    }
  }
}
