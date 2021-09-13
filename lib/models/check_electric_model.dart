import 'package:hive/hive.dart';

part 'check_electric_model.g.dart';

@HiveType(typeId: 0)
class CheckElectric extends HiveObject {
  ///Sirine
  @HiveField(0)
  String? siren;

  ///Pengeras Suara
  @HiveField(1)
  String? loudSpeaker;

  ///Klakson
  @HiveField(2)
  String? horn;

  ///Lampu Dashboard
  @HiveField(3)
  String? dashboardLight;

  ///Lampu Kabin
  @HiveField(4)
  String? cabinLight;

  ///Lampu Sein
  @HiveField(5)
  String? turnLight;

  ///Lampu Rem
  @HiveField(6)
  String? brakeLight;
}
