import 'package:hive/hive.dart';

part 'check_pump_part_model.g.dart';

@HiveType(typeId: 5)
class CheckPumpPartModel extends HiveObject {
  ///MAIN VALVE
  @HiveField(0)
  String? mainValve;

  ///ROOF TURRET
  @HiveField(1)
  String? roofTurret;

  ///BUMPER TURRET
  @HiveField(2)
  String? bumperTurret;

  ///AIR TANGKI
  @HiveField(3)
  int? tankWater;

  ///FOAM
  @HiveField(4)
  int? foam;

  ///HOUSE REEL KANAN KIRI
  @HiveField(5)
  String? houseReelRightAndLeft;

  ///NOZZLE FOAM
  @HiveField(6)
  int? nozzleFoam;
}
