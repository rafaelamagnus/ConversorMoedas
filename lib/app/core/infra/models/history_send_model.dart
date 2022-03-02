import 'package:conversormoedas/app/core/domain/entities/history_send_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'history_send_model.g.dart';

@JsonSerializable()
class HistorySendModel extends HistorySendEntity {
  HistorySendModel({
    required double valor,
    required double dolar,
    required double euro,
  }) : super(valor: valor, dolar: dolar, euro: euro);

  factory HistorySendModel.fromJson(Map<String, dynamic> json) => _$HistorySendModelFromJson(json);

  Map<String, dynamic> toJson() => _$HistorySendModelToJson(this);

  factory HistorySendModel.fromUserEntity(HistorySendEntity historySendEntity) => HistorySendModel(
        valor: historySendEntity.valor,
        dolar: historySendEntity.dolar,
        euro: historySendEntity.euro,
      );

  HistorySendEntity toUserAuthenticateEntity() => HistorySendEntity(
        valor: valor,
        dolar: dolar,
        euro: euro,
      );
}
