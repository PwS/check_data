// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_machine_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckMachineAdapter extends TypeAdapter<CheckMachine> {
  @override
  final int typeId = 1;

  @override
  CheckMachine read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckMachine()
      ..id = fields[0] as int?
      ..machineOil = fields[1] as String?
      ..oilPowerSteering = fields[2] as String?
      ..airRadiator = fields[3] as String?
      ..brakeFluid = fields[4] as String?
      ..clutch = fields[5] as String?
      ..accu = fields[6] as String?
      ..bbm = fields[7] as int?;
  }

  @override
  void write(BinaryWriter writer, CheckMachine obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.machineOil)
      ..writeByte(2)
      ..write(obj.oilPowerSteering)
      ..writeByte(3)
      ..write(obj.airRadiator)
      ..writeByte(4)
      ..write(obj.brakeFluid)
      ..writeByte(5)
      ..write(obj.clutch)
      ..writeByte(6)
      ..write(obj.accu)
      ..writeByte(7)
      ..write(obj.bbm);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckMachineAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
