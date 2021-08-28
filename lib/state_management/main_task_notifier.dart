import 'package:check_data/model/model_radio_group.dart';
import 'package:check_data/ui/pages/main_menu/main_menu_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class MainTaskNotifier with ChangeNotifier {
  ///DECLAREVARIABLE
  TextEditingController _controllerBBM = TextEditingController();
  GlobalKey<FormState> _globalTaskCheckListKey = new GlobalKey<FormState>();

  ///Default Radio Button Item
  String? _radioOliMesin;
  String? _radioOliPowerSteering;
  String? _radioAirRadioator;
  String? _radioMinyakRem;
  String? _radioKopling;
  String? _radioAccu;

  ///Group Value For RadioButton
  int? _idRadioOliMesin;
  int? _idRadioOliPowerSteering;
  int? _idRadioAirRadiator;
  int? _idRadioMinyakRem;
  int? _idRadioKopling;
  int? _idRadioAccu;

  final List<ModelRadioGroup> _checkList = [
    ModelRadioGroup(index: 1, text: "B"),
    ModelRadioGroup(index: 2, text: "TB"),
  ];

  ///Logger
  var logger = Logger();

  ///GETTER SETTER
  TextEditingController get controllerBBM => _controllerBBM;

  GlobalKey<FormState> get globalTaskCheckListKey => _globalTaskCheckListKey;

  List<ModelRadioGroup> get checkList => _checkList;

  String? get radioOliMesin => _radioOliMesin;

  set radioOliMesin(String? value) {
    _radioOliMesin = value;
    notifyListeners();
  }

  String? get radioOliPowerSteering => _radioOliPowerSteering;

  set radioOliPowerSteering(String? value) {
    _radioOliPowerSteering = value;
    notifyListeners();
  }

  String? get radioAirRadioator => _radioAirRadioator;

  set radioAirRadioator(String? value) {
    _radioAirRadioator = value;
    notifyListeners();
  }

  String? get radioMinyakRem => _radioMinyakRem;

  set radioMinyakRem(String? value) {
    _radioMinyakRem = value;
    notifyListeners();
  }

  String? get radioKopling => _radioKopling;

  set radioKopling(String? value) {
    _radioKopling = value;
    notifyListeners();
  }

  String? get radioAccu => _radioAccu;

  set radioAccu(String? value) {
    _radioAccu = value;
    notifyListeners();
  }

  int? get idRadioOliMesin => _idRadioOliMesin;

  set idRadioOliMesin(int? value) {
    _idRadioOliMesin = value;
    notifyListeners();
  }

  int? get idRadioOliPowerSteering => _idRadioOliPowerSteering;

  set idRadioOliPowerSteering(int? value) {
    _idRadioOliPowerSteering = value;
    notifyListeners();
  }

  int? get idRadioAirRadiator => _idRadioAirRadiator;

  set idRadioAirRadiator(int? value) {
    _idRadioAirRadiator = value;
    notifyListeners();
  }

  int? get idRadioMinyakRem => _idRadioMinyakRem;

  set idRadioMinyakRem(int? value) {
    _idRadioMinyakRem = value;
    notifyListeners();
  }

  int? get idRadioKopling => _idRadioKopling;

  set idRadioKopling(int? value) {
    _idRadioKopling = value;
    notifyListeners();
  }

  int? get idRadioAccu => _idRadioAccu;

  set idRadioAccu(int? value) {
    _idRadioAccu = value;
    notifyListeners();
  }

  ///Function
  void submitFromTaskCheckList() {
    if (_globalTaskCheckListKey.currentState!.validate() != false) {
      ///Do Proses Submit and Clear Data
      logger.i(
          'Value For Oli Mesin ${this._idRadioOliMesin} ${this._radioOliMesin}\n'
          'Value For Oli Power Steering ${this._idRadioOliPowerSteering} ${this._radioOliPowerSteering}\n'
          'Value For Air Radiator ${this._idRadioAirRadiator} ${this._radioAirRadioator}\n'
          'Value For Minyak Rem ${this._idRadioMinyakRem} ${this._radioMinyakRem}\n'
          'Value For Kopling ${this._idRadioKopling} ${this._radioKopling}\n'
          'Value For Accu ${this._idRadioAccu} ${this._radioAccu}\n'
          'Value for BBM in % ${this._controllerBBM.text}');
      Get.off(MainMenuPage());
    }
  }
}
