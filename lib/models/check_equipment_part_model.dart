import 'package:hive/hive.dart';

part 'check_equipment_part_model.g.dart';

@HiveType(typeId: 7)
class CheckEquipmentPartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///BAJU PELINDUNG
  @HiveField(1)
  String? shieldClothing;

  ///BA SET
  @HiveField(2)
  String? baSet;

  ///KUNCI COUPLING
  @HiveField(3)
  String? CouplingLock;

  ///HELMET
  @HiveField(4)
  String? helmet;

  ///SEPATU
  @HiveField(5)
  String? shoes;

  ///PENGGANJAL BAN
  @HiveField(6)
  String? tireBlocker;

  ///TANDU LIPAT
  @HiveField(7)
  String? foldingStretcher;
}
