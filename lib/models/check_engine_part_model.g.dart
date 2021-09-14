// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_engine_part_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckEnginePartModelAdapter extends TypeAdapter<CheckEnginePartModel> {
  @override
  final int typeId = 4;

  @override
  CheckEnginePartModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckEnginePartModel()
      ..id = fields[0] as int?
      ..machineOil = fields[1] as String?
      ..transmissionOil = fields[2] as String?
      ..powerSteeringOil = fields[3] as String?
      ..bbm = fields[4] as int?
      ..airPressure = fields[5] as String?
      ..tirePressure = fields[6] as String?
      ..airRadiator = fields[7] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckEnginePartModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.machineOil)
      ..writeByte(2)
      ..write(obj.transmissionOil)
      ..writeByte(3)
      ..write(obj.powerSteeringOil)
      ..writeByte(4)
      ..write(obj.bbm)
      ..writeByte(5)
      ..write(obj.airPressure)
      ..writeByte(6)
      ..write(obj.tirePressure)
      ..writeByte(7)
      ..write(obj.airRadiator);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckEnginePartModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
