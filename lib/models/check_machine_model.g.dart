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
      ..machineOil = fields[0] as String?
      ..oilPowerSteering = fields[1] as String?
      ..airRadiator = fields[2] as String?
      ..brakeFluid = fields[3] as String?
      ..clutch = fields[4] as String?
      ..accu = fields[5] as String?
      ..bbm = fields[6] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckMachine obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.machineOil)
      ..writeByte(1)
      ..write(obj.oilPowerSteering)
      ..writeByte(2)
      ..write(obj.airRadiator)
      ..writeByte(3)
      ..write(obj.brakeFluid)
      ..writeByte(4)
      ..write(obj.clutch)
      ..writeByte(5)
      ..write(obj.accu)
      ..writeByte(6)
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
