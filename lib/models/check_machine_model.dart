import 'package:hive/hive.dart';

part 'check_machine_model.g.dart';

@HiveType(typeId: 1)
class CheckMachine extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///Oli Mesin
  @HiveField(2)
  String? machineOil;

  ///Oli Power Steering
  @HiveField(3)
  String? oilPowerSteering;

  ///Air Radiator
  @HiveField(4)
  String? airRadiator;

  ///Minyak Rem
  @HiveField(5)
  String? brakeFluid;

  ///Kopling
  @HiveField(6)
  String? clutch;

  ///Accu
  @HiveField(7)
  String? accu;

  ///BBM
  @HiveField(8)
  int? bbm;

  @override
  String toString() {
    return 'CheckMachine Value {id = $id , vehicleCheckingType = $vehicleCheckingType , machineOil = $machineOil , oilPowerSteering = $oilPowerSteering , airRadiator =$airRadiator , brakeFluid=$brakeFluid , clutch = $clutch , accu = $accu , bbm = $bbm} ';
  }
}
