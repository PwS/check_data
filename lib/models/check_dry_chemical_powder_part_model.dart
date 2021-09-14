import 'package:hive/hive.dart';

part 'check_dry_chemical_powder_part_model.g.dart';

@HiveType(typeId: 6)
class CheckDryChemicalPowderPartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///DRY CHEMICAL POWDER
  @HiveField(1)
  String? dryChemicalPowder;

  ///HOUSE REEL DCP
  @HiveField(2)
  String? houseReelDcp;

  ///NITROGEN GAS
  @HiveField(3)
  String? nitrogenGas;

  ///VALVE
  @HiveField(4)
  String? valve;
}
