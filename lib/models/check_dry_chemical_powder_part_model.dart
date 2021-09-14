import 'package:hive/hive.dart';

part 'check_dry_chemical_powder_part_model.g.dart';

@HiveType(typeId: 6)
class CheckDryChemicalPowderPartModel extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///DRY CHEMICAL POWDER
  @HiveField(2)
  String? dryChemicalPowder;

  ///HOUSE REEL DCP
  @HiveField(3)
  String? houseReelDcp;

  ///NITROGEN GAS
  @HiveField(4)
  String? nitrogenGas;

  ///VALVE
  @HiveField(5)
  String? valve;

  @override
  String toString() {
    return 'CheckMachine CheckDryChemicalPowderPartModel {id = $id ,vehicleCheckingType=$vehicleCheckingType , dryChemicalPowder = $dryChemicalPowder ,'
        ' houseReelDcp = $houseReelDcp , nitrogenGas =$nitrogenGas , valve=$valve } ';
  }
}
