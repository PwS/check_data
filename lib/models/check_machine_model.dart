import 'package:hive/hive.dart';

part 'check_machine_model.g.dart';

@HiveType(typeId: 1)
class CheckMachine extends HiveObject {
  ///Oli Mesin
  @HiveField(0)
  String? machineOil;

  ///Oli Power Steering
  @HiveField(1)
  String? oilPowerSteering;

  ///Air Radiator
  @HiveField(2)
  String? airRadiator;

  ///Minyak Rem
  @HiveField(3)
  String? brakeFluid;

  ///Kopling
  @HiveField(4)
  String? clutch;

  ///Accu
  @HiveField(5)
  String? accu;

  ///BBM
  @HiveField(6)
  String? bbm;
}
