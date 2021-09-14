import 'package:hive/hive.dart';

part 'check_equipment_part_model.g.dart';

@HiveType(typeId: 7)
class CheckEquipmentPartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///BAJU PELINDUNG
  @HiveField(2)
  String? shieldClothing;

  ///BA SET
  @HiveField(3)
  String? baSet;

  ///KUNCI COUPLING
  @HiveField(4)
  String? couplingLock;

  ///HELMET
  @HiveField(5)
  String? helmet;

  ///SEPATU
  @HiveField(6)
  String? shoes;

  ///PENGGANJAL BAN
  @HiveField(7)
  String? tireBlocker;

  ///TANDU LIPAT
  @HiveField(8)
  String? foldingStretcher;

  @override
  String toString() {
    return 'CheckMachine Value {id = $id , vehicleCheckingType=$vehicleCheckingType , shieldClothing = $shieldClothing , baSet = $baSet , '
        'airRadiator =$couplingLock , helmet=$helmet , shoes = $shoes , tireBlocker = $tireBlocker , foldingStretcher = $foldingStretcher} ';
  }
}
