// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CodeEntityAdapter extends TypeAdapter<CodeEntity> {
  @override
  final int typeId = 5;

  @override
  CodeEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CodeEntity(
      id: fields[0] as String,
      name: fields[1] as String,
      baseUrl: fields[2] as String,
      code: fields[3] as String,
      color: fields[4] as String,
      logo: fields[5] as String,
      date: fields[6] as String,
      publisher: fields[7] as String,
      showBasma: fields[8] as String,
      currencyName: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CodeEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.baseUrl)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.color)
      ..writeByte(5)
      ..write(obj.logo)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.publisher)
      ..writeByte(8)
      ..write(obj.showBasma)
      ..writeByte(9)
      ..write(obj.currencyName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CodeEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
