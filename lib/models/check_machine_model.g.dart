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
      ..vehicleCheckingType = fields[1] as String?
      ..machineOil = fields[2] as String?
      ..oilPowerSteering = fields[3] as String?
      ..airRadiator = fields[4] as String?
      ..brakeFluid = fields[5] as String?
      ..clutch = fields[6] as String?
      ..accu = fields[7] as String?
      ..bbm = fields[8] as int?;
  }

  @override
  void write(BinaryWriter writer, CheckMachine obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vehicleCheckingType)
      ..writeByte(2)
      ..write(obj.machineOil)
      ..writeByte(3)
      ..write(obj.oilPowerSteering)
      ..writeByte(4)
      ..write(obj.airRadiator)
      ..writeByte(5)
      ..write(obj.brakeFluid)
      ..writeByte(6)
      ..write(obj.clutch)
      ..writeByte(7)
      ..write(obj.accu)
      ..writeByte(8)
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
