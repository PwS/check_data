import 'package:hive/hive.dart';

part 'check_pump_part_model.g.dart';

@HiveType(typeId: 5)
class CheckPumpPartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///MAIN VALVE
  @HiveField(2)
  String? mainValve;

  ///ROOF TURRET
  @HiveField(3)
  String? roofTurret;

  ///BUMPER TURRET
  @HiveField(4)
  String? bumperTurret;

  ///AIR TANGKI
  @HiveField(5)
  int? tankWater;

  ///FOAM
  @HiveField(6)
  int? foam;

  ///HOUSE REEL KANAN KIRI
  @HiveField(7)
  String? houseReelRightAndLeft;

  ///NOZZLE FOAM
  @HiveField(8)
  int? nozzleFoam;

  @override
  String toString() {
    return 'CheckPumpPartModel Value {id = $id ,vehicleCheckingType=$vehicleCheckingType , mainValve = $mainValve , '
        'roofTurret = $roofTurret , bumperTurret =$bumperTurret , tankWater=$tankWater , '
        'foam = $foam , houseReelRightAndLeft = $houseReelRightAndLeft , nozzleFoam = $nozzleFoam} ';
  }
}
