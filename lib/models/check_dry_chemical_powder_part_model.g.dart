// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_dry_chemical_powder_part_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckDryChemicalPowderPartModelAdapter
    extends TypeAdapter<CheckDryChemicalPowderPartModel> {
  @override
  final int typeId = 6;

  @override
  CheckDryChemicalPowderPartModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckDryChemicalPowderPartModel()
      ..id = fields[0] as int?
      ..vehicleCheckingType = fields[1] as String?
      ..dryChemicalPowder = fields[2] as String?
      ..houseReelDcp = fields[3] as String?
      ..nitrogenGas = fields[4] as String?
      ..valve = fields[5] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckDryChemicalPowderPartModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vehicleCheckingType)
      ..writeByte(2)
      ..write(obj.dryChemicalPowder)
      ..writeByte(3)
      ..write(obj.houseReelDcp)
      ..writeByte(4)
      ..write(obj.nitrogenGas)
      ..writeByte(5)
      ..write(obj.valve);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckDryChemicalPowderPartModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
