import 'package:hive/hive.dart';

part 'check_pump_part_model.g.dart';

@HiveType(typeId: 5)
class CheckPumpPartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///MAIN VALVE
  @HiveField(1)
  String? mainValve;

  ///ROOF TURRET
  @HiveField(2)
  String? roofTurret;

  ///BUMPER TURRET
  @HiveField(3)
  String? bumperTurret;

  ///AIR TANGKI
  @HiveField(4)
  int? tankWater;

  ///FOAM
  @HiveField(5)
  int? foam;

  ///HOUSE REEL KANAN KIRI
  @HiveField(6)
  String? houseReelRightAndLeft;

  ///NOZZLE FOAM
  @HiveField(7)
  int? nozzleFoam;
}
