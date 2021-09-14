// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_electric_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckElectricAdapter extends TypeAdapter<CheckElectric> {
  @override
  final int typeId = 0;

  @override
  CheckElectric read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckElectric()
      ..id = fields[0] as int?
      ..vehicleCheckingType = fields[1] as String?
      ..siren = fields[2] as String?
      ..loudSpeaker = fields[3] as String?
      ..horn = fields[4] as String?
      ..dashboardLight = fields[5] as String?
      ..cabinLight = fields[6] as String?
      ..turnLight = fields[7] as String?
      ..brakeLight = fields[8] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckElectric obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vehicleCheckingType)
      ..writeByte(2)
      ..write(obj.siren)
      ..writeByte(3)
      ..write(obj.loudSpeaker)
      ..writeByte(4)
      ..write(obj.horn)
      ..writeByte(5)
      ..write(obj.dashboardLight)
      ..writeByte(6)
      ..write(obj.cabinLight)
      ..writeByte(7)
      ..write(obj.turnLight)
      ..writeByte(8)
      ..write(obj.brakeLight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckElectricAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
