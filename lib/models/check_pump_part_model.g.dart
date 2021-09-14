// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_pump_part_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckPumpPartModelAdapter extends TypeAdapter<CheckPumpPartModel> {
  @override
  final int typeId = 5;

  @override
  CheckPumpPartModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckPumpPartModel()
      ..id = fields[0] as int?
      ..mainValve = fields[1] as String?
      ..roofTurret = fields[2] as String?
      ..bumperTurret = fields[3] as String?
      ..tankWater = fields[4] as int?
      ..foam = fields[5] as int?
      ..houseReelRightAndLeft = fields[6] as String?
      ..nozzleFoam = fields[7] as int?;
  }

  @override
  void write(BinaryWriter writer, CheckPumpPartModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.mainValve)
      ..writeByte(2)
      ..write(obj.roofTurret)
      ..writeByte(3)
      ..write(obj.bumperTurret)
      ..writeByte(4)
      ..write(obj.tankWater)
      ..writeByte(5)
      ..write(obj.foam)
      ..writeByte(6)
      ..write(obj.houseReelRightAndLeft)
      ..writeByte(7)
      ..write(obj.nozzleFoam);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckPumpPartModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
