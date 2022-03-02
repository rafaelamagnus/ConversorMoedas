// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_send_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistorySendModel _$HistorySendModelFromJson(Map<String, dynamic> json) {
  return HistorySendModel(
    valor: (json['valor'] as num).toDouble(),
    dolar: (json['dolar'] as num).toDouble(),
    euro: (json['euro'] as num).toDouble(),
  );
}

Map<String, dynamic> _$HistorySendModelToJson(HistorySendModel instance) =>
    <String, dynamic>{
      'valor': instance.valor,
      'dolar': instance.dolar,
      'euro': instance.euro,
    };
