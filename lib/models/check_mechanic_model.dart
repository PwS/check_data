import 'package:hive/hive.dart';

part 'check_mechanic_model.g.dart';

@HiveType(typeId: 2)
class CheckMechanic extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///Kebocoran Oli
  @HiveField(2)
  String? oilLeak;

  ///Handle Perseneling
  @HiveField(3)
  String? shiftHandle;

  ///Rem Tangan
  @HiveField(4)
  String? handBreak;

  ///Pedal Gas
  @HiveField(5)
  String? gasPedal;

  ///Pedal Kopling
  @HiveField(6)
  String? clutchPedal;

  ///Pemanasan Mesin
  @HiveField(7)
  String? machineHeating;

  @override
  String toString() {
    return 'CheckMechanic Value {id = $id , vehicleCheckingType =$vehicleCheckingType , oilLeak = $oilLeak , shiftHandle = $shiftHandle , handBreak =$handBreak '
        ', gasPedal=$gasPedal , clutchPedal = $clutchPedal , machineHeating = $machineHeating } ';
  }
}
