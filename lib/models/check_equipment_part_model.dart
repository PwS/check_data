import 'package:hive/hive.dart';

part 'check_equipment_part_model.g.dart';

@HiveType(typeId: 7)
class CheckEquipmentPartModel extends HiveObject {
  ///BAJU PELINDUNG
  @HiveField(0)
  String? shieldClothing;

  ///BA SET
  @HiveField(1)
  String? baSet;

  ///KUNCI COUPLING
  @HiveField(2)
  String? CouplingLock;

  ///HELMET
  @HiveField(3)
  String? helmet;

  ///SEPATU
  @HiveField(4)
  String? shoes;

  ///PENGGANJAL BAN
  @HiveField(5)
  String? tireBlocker;

  ///TANDU LIPAT
  @HiveField(6)
  String? foldingStretcher;
}
