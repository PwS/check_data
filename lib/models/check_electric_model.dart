import 'package:hive/hive.dart';

part 'check_electric_model.g.dart';

@HiveType(typeId: 0)
class CheckElectric extends HiveObject {
  ///ID
  @HiveField(0)
  int? id;

  ///VehicleType+CheckingType
  @HiveField(1)
  String? vehicleCheckingType;

  ///Sirine
  @HiveField(2)
  String? siren;

  ///Pengeras Suara
  @HiveField(3)
  String? loudSpeaker;

  ///Klakson
  @HiveField(4)
  String? horn;

  ///Lampu Dashboard
  @HiveField(5)
  String? dashboardLight;

  ///Lampu Kabin
  @HiveField(6)
  String? cabinLight;

  ///Lampu Sein
  @HiveField(7)
  String? turnLight;

  ///Lampu Rem
  @HiveField(8)
  String? brakeLight;

  @override
  String toString() {
    return 'CheckElectric Value {id = $id ,vehicleCheckingType=$vehicleCheckingType , siren = $siren ,'
        ' loudSpeaker = $loudSpeaker , horn =$horn , '
        'dashboardLight=$dashboardLight , cabinLight = $cabinLight , '
        'turnLight = $turnLight , brakeLight = $brakeLight} ';
  }
}
