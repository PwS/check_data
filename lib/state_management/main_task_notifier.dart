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
  GlobalKey<FormState> _globalTaskCheckListKey = new GlobalKey<FormState>();

  String _currentPage = '';

  ///TextController
  TextEditingController _controllerBBM = TextEditingController();
  TextEditingController _controllerAirTangki = TextEditingController();
  TextEditingController _controllerFoam = TextEditingController();
  TextEditingController _controllerNozzleFoam = TextEditingController();

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

  ///Default Radio Button Bagian Engine
  String? _radioOliTransmisi;
  String? _radioTekananUdara;
  String? _radioAirRadiator;

  ///Group Value For Bagian Engine
  int? _idOliTransmisi;
  int? _idTekananUdara;
  int? _idAirRadiator;

  ///Default Radio Button Bagian Pompa
  String? _radioMainValve;
  String? _radioRoofTurret;
  String? _radioBumperTurret;
  String? _radioHouseReelKananKiri;

  ///Group Value For Bagian Pompa
  int? _idRadioMainValve;
  int? _idRadioRoofTurret;
  int? _idRadioBumperTurret;
  int? _idRadioHouseReelKananKiri;

  ///Default Radio Button Bagian Dry Chemical Powder
  String? _radioDryChemicalPowder;
  String? _radioHouseReelDcp;
  String? _radioNitrogenGas;
  String? _radioValve;

  ///Group Value For Bagian Dry Chemical Powder
  int? _idRadioDryChemicalPowder;
  int? _idRadioHouseReelDcp;
  int? _idRadioNitrogenGas;
  int? _idRadioValve;

  ///Default Radio Button Bagian Peralatan
  String? _radioBajuPelindung;
  String? _radioBaSet;
  String? _radioKunciCoupling;
  String? _radioHelmet;
  String? _radioSepatu;
  String? _radioPengganjalBan;
  String? _radioTanduLipat;

  ///Group Value For Bagian Peralatan
  int? _idRadioBajuPelindung;
  int? _idRadioBaSet;
  int? _idRadioKunciCoupling;
  int? _idRadioHelmet;
  int? _idRadioSepatu;
  int? _idRadioPengganjalBan;
  int? _idRadioTanduLipat;

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

  TextEditingController get controllerAirTangki => _controllerAirTangki;

  TextEditingController get controllerFoam => _controllerFoam;

  TextEditingController get controllerNozzleFoam => _controllerNozzleFoam;

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

  set controllerFoam(TextEditingController value) {
    _controllerFoam = value;
    notifyListeners();
  }

  String? get radioOliTransmisi => _radioOliTransmisi;

  set radioOliTransmisi(String? value) {
    _radioOliTransmisi = value;
    notifyListeners();
  }

  String? get radioTekananUdara => _radioTekananUdara;

  set radioTekananUdara(String? value) {
    _radioTekananUdara = value;
    notifyListeners();
  }

  String? get radioAirRadiator => _radioAirRadiator;

  set radioAirRadiator(String? value) {
    _radioAirRadiator = value;
    notifyListeners();
  }

  int? get idOliTransmisi => _idOliTransmisi;

  set idOliTransmisi(int? value) {
    _idOliTransmisi = value;
    notifyListeners();
  }

  int? get idTekananUdara => _idTekananUdara;

  set idTekananUdara(int? value) {
    _idTekananUdara = value;
    notifyListeners();
  }

  int? get idAirRadiator => _idAirRadiator;

  set idAirRadiator(int? value) {
    _idAirRadiator = value;
    notifyListeners();
  }

  String? get radioMainValve => _radioMainValve;

  set radioMainValve(String? value) {
    _radioMainValve = value;
    notifyListeners();
  }

  String? get radioRoofTurret => _radioRoofTurret;

  set radioRoofTurret(String? value) {
    _radioRoofTurret = value;
    notifyListeners();
  }

  String? get radioBumperTurret => _radioBumperTurret;

  set radioBumperTurret(String? value) {
    _radioBumperTurret = value;
    notifyListeners();
  }

  String? get radioHouseReelKananKiri => _radioHouseReelKananKiri;

  set radioHouseReelKananKiri(String? value) {
    _radioHouseReelKananKiri = value;
    notifyListeners();
  }

  int? get idRadioMainValve => _idRadioMainValve;

  set idRadioMainValve(int? value) {
    _idRadioMainValve = value;
    notifyListeners();
  }

  int? get idRadioRoofTurret => _idRadioRoofTurret;

  set idRadioRoofTurret(int? value) {
    _idRadioRoofTurret = value;
    notifyListeners();
  }

  int? get idRadioBumperTurret => _idRadioBumperTurret;

  set idRadioBumperTurret(int? value) {
    _idRadioBumperTurret = value;
    notifyListeners();
  }

  int? get idRadioHouseReelKananKiri => _idRadioHouseReelKananKiri;

  set idRadioHouseReelKananKiri(int? value) {
    _idRadioHouseReelKananKiri = value;
    notifyListeners();
  }

  String? get radioDryChemicalPowder => _radioDryChemicalPowder;

  set radioDryChemicalPowder(String? value) {
    _radioDryChemicalPowder = value;
    notifyListeners();
  }

  String? get radioHouseReelDcp => _radioHouseReelDcp;

  set radioHouseReelDcp(String? value) {
    _radioHouseReelDcp = value;
    notifyListeners();
  }

  String? get radioNitrogenGas => _radioNitrogenGas;

  set radioNitrogenGas(String? value) {
    _radioNitrogenGas = value;
    notifyListeners();
  }

  String? get radioValve => _radioValve;

  set radioValve(String? value) {
    _radioValve = value;
    notifyListeners();
  }

  int? get idRadioDryChemicalPowder => _idRadioDryChemicalPowder;

  set idRadioDryChemicalPowder(int? value) {
    _idRadioDryChemicalPowder = value;
    notifyListeners();
  }

  int? get idRadioHouseReelDcp => _idRadioHouseReelDcp;

  set idRadioHouseReelDcp(int? value) {
    _idRadioHouseReelDcp = value;
    notifyListeners();
  }

  int? get idRadioNitrogenGas => _idRadioNitrogenGas;

  set idRadioNitrogenGas(int? value) {
    _idRadioNitrogenGas = value;
    notifyListeners();
  }

  int? get idRadioValve => _idRadioValve;

  set idRadioValve(int? value) {
    _idRadioValve = value;
    notifyListeners();
  }

  String? get radioBajuPelindung => _radioBajuPelindung;

  set radioBajuPelindung(String? value) {
    _radioBajuPelindung = value;
    notifyListeners();
  }

  String? get radioBaSet => _radioBaSet;

  set radioBaSet(String? value) {
    _radioBaSet = value;
    notifyListeners();
  }

  String? get radioKunciCoupling => _radioKunciCoupling;

  set radioKunciCoupling(String? value) {
    _radioKunciCoupling = value;
    notifyListeners();
  }

  String? get radioHelmet => _radioHelmet;

  set radioHelmet(String? value) {
    _radioHelmet = value;
    notifyListeners();
  }

  String? get radioSepatu => _radioSepatu;

  set radioSepatu(String? value) {
    _radioSepatu = value;
    notifyListeners();
  }

  String? get radioPengganjalBan => _radioPengganjalBan;

  set radioPengganjalBan(String? value) {
    _radioPengganjalBan = value;
    notifyListeners();
  }

  String? get radioTanduLipat => _radioTanduLipat;

  set radioTanduLipat(String? value) {
    _radioTanduLipat = value;
    notifyListeners();
  }

  int? get idRadioBajuPelindung => _idRadioBajuPelindung;

  set idRadioBajuPelindung(int? value) {
    _idRadioBajuPelindung = value;
    notifyListeners();
  }

  int? get idRadioBaSet => _idRadioBaSet;

  set idRadioBaSet(int? value) {
    _idRadioBaSet = value;
    notifyListeners();
  }

  int? get idRadioKunciCoupling => _idRadioKunciCoupling;

  set idRadioKunciCoupling(int? value) {
    _idRadioKunciCoupling = value;
    notifyListeners();
  }

  int? get idRadioHelmet => _idRadioHelmet;

  set idRadioHelmet(int? value) {
    _idRadioHelmet = value;
    notifyListeners();
  }

  int? get idRadioSepatu => _idRadioSepatu;

  set idRadioSepatu(int? value) {
    _idRadioSepatu = value;
    notifyListeners();
  }

  int? get idRadioPengganjalBan => _idRadioPengganjalBan;

  set idRadioPengganjalBan(int? value) {
    _idRadioPengganjalBan = value;
    notifyListeners();
  }

  int? get idRadioTanduLipat => _idRadioTanduLipat;

  set idRadioTanduLipat(int? value) {
    _idRadioTanduLipat = value;
    notifyListeners();
  }

  ///Function
  ///FIXME SUBMIT
  void submitFromTaskCheckList(String vehicle, String checkingVehicle) {
    if (_globalTaskCheckListKey.currentState!.validate() != false) {
      _currentPage = '$vehicle-$checkingVehicle';
      logger.i(
          'Current Page is $vehicle with detail tasklist vehicle $checkingVehicle');

      ///Check Current Page and Do Submit
      ///TODO Store Data Into Hive
      switch (_currentPage) {
        case '${Config.commandoCar}-${Config.checkMachine}':
          logger.i('$vehicle - $checkingVehicle \n'
              'Value For Oli Mesin ${this._idRadioOliMesin} ${this._radioOliMesin}\n'
              'Value For Oli Power Steering ${this._idRadioOliPowerSteering} ${this._radioOliPowerSteering}\n'
              'Value For Air Radiator ${this._idRadioAirRadiator} ${this._radioAirRadioator}\n'
              'Value For Minyak Rem ${this._idRadioMinyakRem} ${this._radioMinyakRem}\n'
              'Value For Kopling ${this._idRadioKopling} ${this._radioKopling}\n'
              'Value For Accu ${this._idRadioAccu} ${this._radioAccu}\n'
              'Value for BBM in % ${this._controllerBBM.text}');
          break;
        case '${Config.commandoCar}-${(Config.checkPhysical)}':
          debugPrint('Commando Car - Check Fisik');
          break;
        case '${Config.commandoCar}-${Config.checkMechanic}':
          debugPrint('Commando Car - Check Mekanik');
          break;
        case '${Config.commandoCar}-${Config.checkElectric}':
          debugPrint('Commando Car - Check Elektrik');
          break;
        case '${Config.oshkoshF1}-${Config.enginePart}':
          debugPrint('Bagian Mesin');
          break;
        case '${Config.oshkoshF1}-${Config.pumpPart}':
          debugPrint('Bagian Pompa');
          break;
        case '${Config.oshkoshF1}-${Config.dryChemicalPowderPart}':
          debugPrint('Bagian Dry Chemical Powder');
          break;
        case '${Config.oshkoshF1}-${Config.equipmentPart}':
          debugPrint('Bagian Perlengkapan');
          break;
        case '${Config.ambulance01}-${Config.checkMachine}':
          debugPrint('Ambulance 01 - Check Mesin');
          break;
        case '${Config.ambulance01}-${Config.checkPhysical}':
          debugPrint('Ambulance 01 - Check Fisik');
          break;
        case '${Config.ambulance01}-${Config.checkMechanic}':
          debugPrint('Ambulance 01 - Check Mekanik');
          break;
        case '${Config.ambulance01}-${Config.checkElectric}':
          debugPrint('Ambulance 01 - Check Elektrik');
          break;
        default:
          logger.e('Not Found');
      }

      /*Get.off(MainMenuPage());*/
    }
  }
}
