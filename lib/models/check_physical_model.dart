import 'package:hive/hive.dart';

part 'check_physical_model.g.dart';

@HiveType(typeId: 3)
class CheckPhysical extends HiveObject {
  ///Body Kendaraan
  @HiveField(0)
  String? vehicleBody;

  ///Tekanan Ban
  @HiveField(1)
  String? tirePressure;

  ///Mur Roda
  @HiveField(2)
  String? wheelNut;

  ///Kaca Spion
  @HiveField(3)
  String? rearviewMirror;

  ///Tempat Perlengkapan
  @HiveField(4)
  String? equipmentPlace;

  ///Wiper
  @HiveField(5)
  String? wipers;

  ///Pintu
  @HiveField(6)
  String? doorVehicle;
}
