import 'package:conversormoedas/app/core/domain/entities/history_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'history_model.g.dart';

@JsonSerializable()
class HistoryModel extends HistoryEntity {
  HistoryModel({
    int? id,
    required String valor,
    required String dolar,
    required String euro,
  }) : super(
          id: id,
          valor: valor,
          dolar: dolar,
          euro: euro,
        );

  factory HistoryModel.fromJson(Map<String, dynamic> json) => _$HistoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryModelToJson(this);

  factory HistoryModel.fromUserEntity(HistoryEntity historyEntity) => HistoryModel(
        id: historyEntity.id,
        valor: historyEntity.valor,
        dolar: historyEntity.dolar,
        euro: historyEntity.euro,
      );
}
