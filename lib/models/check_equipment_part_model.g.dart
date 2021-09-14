// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_equipment_part_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckEquipmentPartModelAdapter
    extends TypeAdapter<CheckEquipmentPartModel> {
  @override
  final int typeId = 7;

  @override
  CheckEquipmentPartModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckEquipmentPartModel()
      ..id = fields[0] as int?
      ..shieldClothing = fields[1] as String?
      ..baSet = fields[2] as String?
      ..CouplingLock = fields[3] as String?
      ..helmet = fields[4] as String?
      ..shoes = fields[5] as String?
      ..tireBlocker = fields[6] as String?
      ..foldingStretcher = fields[7] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckEquipmentPartModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.shieldClothing)
      ..writeByte(2)
      ..write(obj.baSet)
      ..writeByte(3)
      ..write(obj.CouplingLock)
      ..writeByte(4)
      ..write(obj.helmet)
      ..writeByte(5)
      ..write(obj.shoes)
      ..writeByte(6)
      ..write(obj.tireBlocker)
      ..writeByte(7)
      ..write(obj.foldingStretcher);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckEquipmentPartModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
