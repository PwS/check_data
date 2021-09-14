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
      ..vehicleCheckingType = fields[1] as String?
      ..vehicleBody = fields[2] as String?
      ..tirePressure = fields[3] as String?
      ..wheelNut = fields[4] as String?
      ..rearviewMirror = fields[5] as String?
      ..equipmentPlace = fields[6] as String?
      ..wipers = fields[7] as String?
      ..doorVehicle = fields[8] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckPhysical obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vehicleCheckingType)
      ..writeByte(2)
      ..write(obj.vehicleBody)
      ..writeByte(3)
      ..write(obj.tirePressure)
      ..writeByte(4)
      ..write(obj.wheelNut)
      ..writeByte(5)
      ..write(obj.rearviewMirror)
      ..writeByte(6)
      ..write(obj.equipmentPlace)
      ..writeByte(7)
      ..write(obj.wipers)
      ..writeByte(8)
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
