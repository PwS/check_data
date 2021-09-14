import 'package:hive/hive.dart';

part 'check_engine_part_model.g.dart';

@HiveType(typeId: 4)
class CheckEnginePartModel extends HiveObject {
  ///Oli Mesin
  @HiveField(0)
  String? machineOil;

  ///Oli Transmisi
  @HiveField(1)
  String? transmissionOil;

  ///Oli Power Steering
  @HiveField(2)
  String? powerSteeringOil;

  ///BBM
  @HiveField(3)
  int? bbm;

  ///TEKANAN UDARA
  @HiveField(4)
  String? airPressure;

  ///TEKANAN BAN
  @HiveField(5)
  String? tirePressure;

  ///AIR RADIATOR
  @HiveField(6)
  String? airRadiator;
}
