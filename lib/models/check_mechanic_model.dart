import 'package:hive/hive.dart';

part 'check_mechanic_model.g.dart';

@HiveType(typeId: 2)
class CheckMechanic extends HiveObject {
  ///Kebocoran Oli
  @HiveField(0)
  String? oilLeak;

  ///Handle Perseneling
  @HiveField(1)
  String? shiftHandle;

  ///Rem Tangan
  @HiveField(2)
  String? handBreak;

  ///Pedal Gas
  @HiveField(3)
  String? gasPedal;

  ///Pedal Kopling
  @HiveField(4)
  String? clutchPedal;

  ///Pemanasan Mesin
  @HiveField(5)
  String? machineHeating;
}
