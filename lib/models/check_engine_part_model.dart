import 'package:hive/hive.dart';

part 'check_engine_part_model.g.dart';

@HiveType(typeId: 4)
class CheckEnginePartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///Oli Mesin
  @HiveField(2)
  String? machineOil;

  ///Oli Transmisi
  @HiveField(3)
  String? transmissionOil;

  ///Oli Power Steering
  @HiveField(4)
  String? powerSteeringOil;

  ///BBM
  @HiveField(5)
  int? bbm;

  ///TEKANAN UDARA
  @HiveField(6)
  String? airPressure;

  ///TEKANAN BAN
  @HiveField(7)
  String? tirePressure;

  ///AIR RADIATOR
  @HiveField(8)
  String? airRadiator;

  @override
  String toString() {
    return 'CheckEnginePartModel Value {id = $id vehicleCheckingType=$vehicleCheckingType , machineOil = $machineOil , transmissionOil = $transmissionOil ,'
        ' powerSteeringOil =$powerSteeringOil , bbm=$bbm , airPressure = $airPressure , tirePressure = $tirePressure , airRadiator = $airRadiator} ';
  }
}
