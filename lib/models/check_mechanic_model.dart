import 'package:hive/hive.dart';

part 'check_mechanic_model.g.dart';

@HiveType(typeId: 2)
class CheckMechanic extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///Kebocoran Oli
  @HiveField(1)
  String? oilLeak;

  ///Handle Perseneling
  @HiveField(2)
  String? shiftHandle;

  ///Rem Tangan
  @HiveField(3)
  String? handBreak;

  ///Pedal Gas
  @HiveField(4)
  String? gasPedal;

  ///Pedal Kopling
  @HiveField(5)
  String? clutchPedal;

  ///Pemanasan Mesin
  @HiveField(6)
  String? machineHeating;
}
