// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanetsModelAdapter extends TypeAdapter<PlanetsModel> {
  @override
  final int typeId = 0;

  @override
  PlanetsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlanetsModel()
      .._planetOrder = fields[0] as num?
      .._name = fields[1] as String?
      .._description = fields[2] as String?
      .._source = fields[3] as String?
      .._wikiLink = fields[4] as String?
      .._imgSrc = fields[5] as String?
      .._id = fields[6] as num?;
  }

  @override
  void write(BinaryWriter writer, PlanetsModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj._planetOrder)
      ..writeByte(1)
      ..write(obj._name)
      ..writeByte(2)
      ..write(obj._description)
      ..writeByte(3)
      ..write(obj._source)
      ..writeByte(4)
      ..write(obj._wikiLink)
      ..writeByte(5)
      ..write(obj._imgSrc)
      ..writeByte(6)
      ..write(obj._id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanetsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
