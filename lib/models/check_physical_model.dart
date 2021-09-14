import 'package:hive/hive.dart';

part 'check_physical_model.g.dart';

@HiveType(typeId: 3)
class CheckPhysical extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///Body Kendaraan
  @HiveField(2)
  String? vehicleBody;

  ///Tekanan Ban
  @HiveField(3)
  String? tirePressure;

  ///Mur Roda
  @HiveField(4)
  String? wheelNut;

  ///Kaca Spion
  @HiveField(5)
  String? rearviewMirror;

  ///Tempat Perlengkapan
  @HiveField(6)
  String? equipmentPlace;

  ///Wiper
  @HiveField(7)
  String? wipers;

  ///Pintu
  @HiveField(8)
  String? doorVehicle;

  @override
  String toString() {
    return 'CheckPhysical Value {id = $id ,vehicleCheckingType=$vehicleCheckingType , vehicleBody = $vehicleBody , tirePressure = $tirePressure , wheelNut =$wheelNut ,'
        ' rearviewMirror=$rearviewMirror , equipmentPlace = $equipmentPlace , wipers = $wipers , doorVehicle = $doorVehicle} ';
  }
}
