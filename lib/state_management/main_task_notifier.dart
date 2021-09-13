import 'dart:ui';

import 'package:check_data/model/model_radio_group.dart';
import 'package:check_data/models/check_electric_model.dart';
import 'package:check_data/models/check_machine_model.dart';
import 'package:check_data/models/check_mechanic_model.dart';
import 'package:check_data/models/check_physical_model.dart';
import 'package:check_data/ui/pages/main_menu/main_menu_page.dart';
import 'package:check_data/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class MainTaskNotifier with ChangeNotifier {
  ///DECLAREVARIABLE
  TextEditingController _controllerBBM = TextEditingController();
  GlobalKey<FormState> _globalTaskCheckListKey = new GlobalKey<FormState>();

  String _currentPage = '';

  ///Default Radio Button Check Mesin
  String? _radioOliMesin;
  String? _radioOliPowerSteering;
  String? _radioAirRadioator;
  String? _radioMinyakRem;
  String? _radioKopling;
  String? _radioAccu;

  ///Group Value For Check Mesin
  int? _idRadioOliMesin;
  int? _idRadioOliPowerSteering;
  int? _idRadioAirRadiator;
  int? _idRadioMinyakRem;
  int? _idRadioKopling;
  int? _idRadioAccu;

  ///Default Radio Button Check Fisik
  String? _radioBodyKendaraan;
  String? _radioTekananBan;
  String? _radioMurRoda;
  String? _radioKacaSpion;
  String? _radioTempatPerlengkapan;
  String? _radioWiper;
  String? _radioPintu;

  ///Group Value For Check Fisik
  int? _idRadioBodyKendaraan;
  int? _idRadioTekananBan;
  int? _idRadioMurRoda;
  int? _idRadioKacaSpion;
  int? _idRadioTempatPerlengkapan;
  int? _idRadioWiper;
  int? _idRadioPintu;

  ///Default Radio Button Check Mekanik
  String? _radioKebocoranOli;
  String? _radioHandlePerseneling;
  String? _radioRemTangan;
  String? _radioPedalGas;
  String? _radioPedalKopling;
  String? _radioPemanasanMesin;

  ///Group Value For Check Mekanik
  int? _idRadioKebocoranOli;
  int? _idRadioHandlePerseneling;
  int? _idRadioRemTangan;
  int? _idRadioPedalGas;
  int? _idRadioPedalKopling;
  int? _idRadioPemanasanMesin;

  ///Default Radio Button Check Elektrik
  String? _radioSirine;
  String? _radioPengerasSuara;
  String? _radioKlakson;
  String? _radioLampuDashBoard;
  String? _radioLampuKabin;
  String? _radioLampuSein;
  String? _radioLampuRem;

  ///Group Value For Check Elektrik
  int? _idRadioSirine;
  int? _idRadioPengerasSuara;
  int? _idRadioKlakson;
  int? _idRadioLampuDashboard;
  int? _idRadioLampuKabin;
  int? _idRadioLampuSein;
  int? _idRadioLampuRem;

  final List<ModelRadioGroup> _checkList = [
    ModelRadioGroup(index: 1, text: "B"),
    ModelRadioGroup(index: 2, text: "TB"),
  ];

  ///Model
  CheckElectric _checkElectric = CheckElectric();
  CheckMachine _checkMachine = CheckMachine();
  CheckMechanic _checkMechanic = CheckMechanic();
  CheckPhysical _checkPhysical = CheckPhysical();

  ///Logger
  var logger = Logger();

  ///GETTER SETTER
  TextEditingController get controllerBBM => _controllerBBM;

  GlobalKey<FormState> get globalTaskCheckListKey => _globalTaskCheckListKey;

  String get currentPage => _currentPage;

  set currentPage(String value) {
    _currentPage = value;
    notifyListeners();
  }

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

  String? get radioBodyKendaraan => _radioBodyKendaraan;

  set radioBodyKendaraan(String? value) {
    _radioBodyKendaraan = value;
    notifyListeners();
  }

  String? get radioTekananBan => _radioTekananBan;

  set radioTekananBan(String? value) {
    _radioTekananBan = value;
    notifyListeners();
  }

  String? get radioMurRoda => _radioMurRoda;

  set radioMurRoda(String? value) {
    _radioMurRoda = value;
    notifyListeners();
  }

  String? get radioKacaSpion => _radioKacaSpion;

  set radioKacaSpion(String? value) {
    _radioKacaSpion = value;
    notifyListeners();
  }

  String? get radioTempatPerlengkapan => _radioTempatPerlengkapan;

  set radioTempatPerlengkapan(String? value) {
    _radioTempatPerlengkapan = value;
    notifyListeners();
  }

  String? get radioWiper => _radioWiper;

  set radioWiper(String? value) {
    _radioWiper = value;
    notifyListeners();
  }

  String? get radioPintu => _radioPintu;

  set radioPintu(String? value) {
    _radioPintu = value;
    notifyListeners();
  }

  int? get idRadioBodyKendaraan => _idRadioBodyKendaraan;

  set idRadioBodyKendaraan(int? value) {
    _idRadioBodyKendaraan = value;
    notifyListeners();
  }

  int? get idRadioTekananBan => _idRadioTekananBan;

  set idRadioTekananBan(int? value) {
    _idRadioTekananBan = value;
    notifyListeners();
  }

  int? get idRadioMurRoda => _idRadioMurRoda;

  set idRadioMurRoda(int? value) {
    _idRadioMurRoda = value;
    notifyListeners();
  }

  int? get idRadioKacaSpion => _idRadioKacaSpion;

  set idRadioKacaSpion(int? value) {
    _idRadioKacaSpion = value;
    notifyListeners();
  }

  int? get idRadioTempatPerlengkapan => _idRadioTempatPerlengkapan;

  set idRadioTempatPerlengkapan(int? value) {
    _idRadioTempatPerlengkapan = value;
    notifyListeners();
  }

  int? get idRadioWiper => _idRadioWiper;

  set idRadioWiper(int? value) {
    _idRadioWiper = value;
    notifyListeners();
  }

  int? get idRadioPintu => _idRadioPintu;

  set idRadioPintu(int? value) {
    _idRadioPintu = value;
    notifyListeners();
  }

  String? get radioKebocoranOli => _radioKebocoranOli;

  set radioKebocoranOli(String? value) {
    _radioKebocoranOli = value;
    notifyListeners();
  }

  String? get radioHandlePerseneling => _radioHandlePerseneling;

  set radioHandlePerseneling(String? value) {
    _radioHandlePerseneling = value;
    notifyListeners();
  }

  String? get radioRemTangan => _radioRemTangan;

  set radioRemTangan(String? value) {
    _radioRemTangan = value;
    notifyListeners();
  }

  String? get radioPedalGas => _radioPedalGas;

  set radioPedalGas(String? value) {
    _radioPedalGas = value;
    notifyListeners();
  }

  String? get radioPedalKopling => _radioPedalKopling;

  set radioPedalKopling(String? value) {
    _radioPedalKopling = value;
    notifyListeners();
  }

  String? get radioPemanasanMesin => _radioPemanasanMesin;

  set radioPemanasanMesin(String? value) {
    _radioPemanasanMesin = value;
    notifyListeners();
  }

  int? get idRadioKebocoranOli => _idRadioKebocoranOli;

  set idRadioKebocoranOli(int? value) {
    _idRadioKebocoranOli = value;
    notifyListeners();
  }

  int? get idRadioHandlePerseneling => _idRadioHandlePerseneling;

  set idRadioHandlePerseneling(int? value) {
    _idRadioHandlePerseneling = value;
    notifyListeners();
  }

  int? get idRadioRemTangan => _idRadioRemTangan;

  set idRadioRemTangan(int? value) {
    _idRadioRemTangan = value;
    notifyListeners();
  }

  int? get idRadioPedalGas => _idRadioPedalGas;

  set idRadioPedalGas(int? value) {
    _idRadioPedalGas = value;
    notifyListeners();
  }

  int? get idRadioPedalKopling => _idRadioPedalKopling;

  set idRadioPedalKopling(int? value) {
    _idRadioPedalKopling = value;
    notifyListeners();
  }

  int? get idRadioPemanasanMesin => _idRadioPemanasanMesin;

  set idRadioPemanasanMesin(int? value) {
    _idRadioPemanasanMesin = value;
    notifyListeners();
  }

  String? get radioSirine => _radioSirine;

  set radioSirine(String? value) {
    _radioSirine = value;
    notifyListeners();
  }

  String? get radioPengerasSuara => _radioPengerasSuara;

  set radioPengerasSuara(String? value) {
    _radioPengerasSuara = value;
    notifyListeners();
  }

  String? get radioKlakson => _radioKlakson;

  set radioKlakson(String? value) {
    _radioKlakson = value;
    notifyListeners();
  }

  String? get radioLampuDashBoard => _radioLampuDashBoard;

  set radioLampuDashBoard(String? value) {
    _radioLampuDashBoard = value;
    notifyListeners();
  }

  String? get radioLampuKabin => _radioLampuKabin;

  set radioLampuKabin(String? value) {
    _radioLampuKabin = value;
    notifyListeners();
  }

  String? get radioLampuSein => _radioLampuSein;

  set radioLampuSein(String? value) {
    _radioLampuSein = value;
    notifyListeners();
  }

  String? get radioLampuRem => _radioLampuRem;

  set radioLampuRem(String? value) {
    _radioLampuRem = value;
    notifyListeners();
  }

  int? get idRadioSirine => _idRadioSirine;

  set idRadioSirine(int? value) {
    _idRadioSirine = value;
    notifyListeners();
  }

  int? get idRadioPengerasSuara => _idRadioPengerasSuara;

  set idRadioPengerasSuara(int? value) {
    _idRadioPengerasSuara = value;
    notifyListeners();
  }

  int? get idRadioKlakson => _idRadioKlakson;

  set idRadioKlakson(int? value) {
    _idRadioKlakson = value;
    notifyListeners();
  }

  int? get idRadioLampuDashboard => _idRadioLampuDashboard;

  set idRadioLampuDashboard(int? value) {
    _idRadioLampuDashboard = value;
    notifyListeners();
  }

  int? get idRadioLampuKabin => _idRadioLampuKabin;

  set idRadioLampuKabin(int? value) {
    _idRadioLampuKabin = value;
    notifyListeners();
  }

  int? get idRadioLampuSein => _idRadioLampuSein;

  set idRadioLampuSein(int? value) {
    _idRadioLampuSein = value;
    notifyListeners();
  }

  int? get idRadioLampuRem => _idRadioLampuRem;

  set idRadioLampuRem(int? value) {
    _idRadioLampuRem = value;
    notifyListeners();
  }

  ///Function
  ///FIXME SUBMIT
  void submitFromTaskCheckList(String vehicle, String checkingVehicle) {
    if (_globalTaskCheckListKey.currentState!.validate() != false) {
      ///Current Page is Check Mesin
      logger.i('$vehicle - $checkingVehicle \n'
          'Value For Oli Mesin ${this._idRadioOliMesin} ${this._radioOliMesin}\n'
          'Value For Oli Power Steering ${this._idRadioOliPowerSteering} ${this._radioOliPowerSteering}\n'
          'Value For Air Radiator ${this._idRadioAirRadiator} ${this._radioAirRadioator}\n'
          'Value For Minyak Rem ${this._idRadioMinyakRem} ${this._radioMinyakRem}\n'
          'Value For Kopling ${this._idRadioKopling} ${this._radioKopling}\n'
          'Value For Accu ${this._idRadioAccu} ${this._radioAccu}\n'
          'Value for BBM in % ${this._controllerBBM.text}');
      switch (_currentPage) {
        case Config.checkElectric:
          debugPrint('Check Elektrik');
          break;
        case Config.checkMachine:
          debugPrint('Check Machine');
          break;
        case Config.checkMechanic:
          debugPrint('Check Mekanik');
          break;
        default:
          debugPrint('Check Physical');
      }

      /*Get.off(MainMenuPage());*/
    }
  }
}
