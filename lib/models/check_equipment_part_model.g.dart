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
      ..vehicleCheckingType = fields[1] as String?
      ..shieldClothing = fields[2] as String?
      ..baSet = fields[3] as String?
      ..couplingLock = fields[4] as String?
      ..helmet = fields[5] as String?
      ..shoes = fields[6] as String?
      ..tireBlocker = fields[7] as String?
      ..foldingStretcher = fields[8] as String?;
  }

  @override
  void write(BinaryWriter writer, CheckEquipmentPartModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vehicleCheckingType)
      ..writeByte(2)
      ..write(obj.shieldClothing)
      ..writeByte(3)
      ..write(obj.baSet)
      ..writeByte(4)
      ..write(obj.couplingLock)
      ..writeByte(5)
      ..write(obj.helmet)
      ..writeByte(6)
      ..write(obj.shoes)
      ..writeByte(7)
      ..write(obj.tireBlocker)
      ..writeByte(8)
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
