import 'package:hive/hive.dart';

part 'check_engine_part_model.g.dart';

@HiveType(typeId: 4)
class CheckEnginePartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///Oli Mesin
  @HiveField(1)
  String? machineOil;

  ///Oli Transmisi
  @HiveField(2)
  String? transmissionOil;

  ///Oli Power Steering
  @HiveField(3)
  String? powerSteeringOil;

  ///BBM
  @HiveField(4)
  int? bbm;

  ///TEKANAN UDARA
  @HiveField(5)
  String? airPressure;

  ///TEKANAN BAN
  @HiveField(6)
  String? tirePressure;

  ///AIR RADIATOR
  @HiveField(7)
  String? airRadiator;
}
