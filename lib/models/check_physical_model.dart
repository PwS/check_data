import 'package:hive/hive.dart';

part 'check_physical_model.g.dart';

@HiveType(typeId: 3)
class CheckPhysical extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///Body Kendaraan
  @HiveField(1)
  String? vehicleBody;

  ///Tekanan Ban
  @HiveField(2)
  String? tirePressure;

  ///Mur Roda
  @HiveField(3)
  String? wheelNut;

  ///Kaca Spion
  @HiveField(4)
  String? rearviewMirror;

  ///Tempat Perlengkapan
  @HiveField(5)
  String? equipmentPlace;

  ///Wiper
  @HiveField(6)
  String? wipers;

  ///Pintu
  @HiveField(7)
  String? doorVehicle;
}
