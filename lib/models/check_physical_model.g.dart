// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_physical_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckPhysicalAdapter extends TypeAdapter<CheckPhysical> {
  @override
  final int typeId = 3;

  @override
  CheckPhysical read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckPhysical()
      ..id = fields[0] as int?
      ..vehicleBody = fields[1] as String?
      ..tirePressure = fields[2] as String?
      ..wheelNut = fields[3] as String?
      ..rearviewMirror = fields[4] as String?
      ..equipmentPlace = fields[5] as String?
      ..wipers = fields[6] as String?
      ..doorVehicle = fields[7] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckPhysical obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vehicleBody)
      ..writeByte(2)
      ..write(obj.tirePressure)
      ..writeByte(3)
      ..write(obj.wheelNut)
      ..writeByte(4)
      ..write(obj.rearviewMirror)
      ..writeByte(5)
      ..write(obj.equipmentPlace)
      ..writeByte(6)
      ..write(obj.wipers)
      ..writeByte(7)
      ..write(obj.doorVehicle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckPhysicalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
