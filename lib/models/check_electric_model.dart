import 'package:hive/hive.dart';

part 'check_electric_model.g.dart';

@HiveType(typeId: 0)
class CheckElectric extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///Sirine
  @HiveField(1)
  String? siren;

  ///Pengeras Suara
  @HiveField(2)
  String? loudSpeaker;

  ///Klakson
  @HiveField(3)
  String? horn;

  ///Lampu Dashboard
  @HiveField(4)
  String? dashboardLight;

  ///Lampu Kabin
  @HiveField(5)
  String? cabinLight;

  ///Lampu Sein
  @HiveField(6)
  String? turnLight;

  ///Lampu Rem
  @HiveField(7)
  String? brakeLight;
}
