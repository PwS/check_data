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
      ..vehicleBody = fields[0] as String?
      ..tirePressure = fields[1] as String?
      ..wheelNut = fields[2] as String?
      ..rearviewMirror = fields[3] as String?
      ..equipmentPlace = fields[4] as String?
      ..wipers = fields[5] as String?
      ..doorVehicle = fields[6] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckPhysical obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.vehicleBody)
      ..writeByte(1)
      ..write(obj.tirePressure)
      ..writeByte(2)
      ..write(obj.wheelNut)
      ..writeByte(3)
      ..write(obj.rearviewMirror)
      ..writeByte(4)
      ..write(obj.equipmentPlace)
      ..writeByte(5)
      ..write(obj.wipers)
      ..writeByte(6)
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
