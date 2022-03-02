// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) {
  return HistoryModel(
    id: json['id'] as int?,
    valor: json['valor'] as String,
    dolar: json['dolar'] as String,
    euro: json['euro'] as String,
  );
}

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'valor': instance.valor,
      'dolar': instance.dolar,
      'euro': instance.euro,
    };
