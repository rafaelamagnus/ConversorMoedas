import 'package:conversormoedas/app/core/domain/entities/history_send_entity.dart';
import 'package:conversormoedas/app/core/domain/errors/home_error.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<IHomeErrors, int>> createItem(HistorySendEntity valor);
  Future<Either<IHomeErrors, List<Map<String, dynamic>>>> getItems();
}
