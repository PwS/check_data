import 'package:hive/hive.dart';

part 'check_dry_chemical_powder_part_model.g.dart';

@HiveType(typeId: 6)
class CheckDryChemicalPowderPartModel extends HiveObject {
  ///DRY CHEMICAL POWDER
  @HiveField(0)
  String? dryChemicalPowder;

  ///HOUSE REEL DCP
  @HiveField(1)
  String? houseReelDcp;

  ///NITROGEN GAS
  @HiveField(2)
  String? nitrogenGas;

  ///VALVE
  @HiveField(3)
  String? valve;
}
