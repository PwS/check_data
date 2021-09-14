import 'package:hive/hive.dart';

part 'check_machine_model.g.dart';

@HiveType(typeId: 1)
class CheckMachine extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///Oli Mesin
  @HiveField(1)
  String? machineOil;

  ///Oli Power Steering
  @HiveField(2)
  String? oilPowerSteering;

  ///Air Radiator
  @HiveField(3)
  String? airRadiator;

  ///Minyak Rem
  @HiveField(4)
  String? brakeFluid;

  ///Kopling
  @HiveField(5)
  String? clutch;

  ///Accu
  @HiveField(6)
  String? accu;

  ///BBM
  @HiveField(7)
  int? bbm;
}
