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
      ..mainValve = fields[0] as String?
      ..roofTurret = fields[1] as String?
      ..bumperTurret = fields[2] as String?
      ..tankWater = fields[3] as int?
      ..foam = fields[4] as int?
      ..houseReelRightAndLeft = fields[5] as String?
      ..nozzleFoam = fields[6] as int?;
  }

  @override
  void write(BinaryWriter writer, CheckPumpPartModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.mainValve)
      ..writeByte(1)
      ..write(obj.roofTurret)
      ..writeByte(2)
      ..write(obj.bumperTurret)
      ..writeByte(3)
      ..write(obj.tankWater)
      ..writeByte(4)
      ..write(obj.foam)
      ..writeByte(5)
      ..write(obj.houseReelRightAndLeft)
      ..writeByte(6)
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
