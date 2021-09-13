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
      ..siren = fields[0] as String?
      ..loudSpeaker = fields[1] as String?
      ..horn = fields[2] as String?
      ..dashboardLight = fields[3] as String?
      ..cabinLight = fields[4] as String?
      ..turnLight = fields[5] as String?
      ..brakeLight = fields[6] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckElectric obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.siren)
      ..writeByte(1)
      ..write(obj.loudSpeaker)
      ..writeByte(2)
      ..write(obj.horn)
      ..writeByte(3)
      ..write(obj.dashboardLight)
      ..writeByte(4)
      ..write(obj.cabinLight)
      ..writeByte(5)
      ..write(obj.turnLight)
      ..writeByte(6)
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
