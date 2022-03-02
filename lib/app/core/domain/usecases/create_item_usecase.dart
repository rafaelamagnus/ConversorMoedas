import 'package:conversormoedas/app/core/domain/entities/history_send_entity.dart';
import 'package:conversormoedas/app/core/domain/errors/home_error.dart';
import 'package:conversormoedas/app/core/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ICreateItemUsecase {
  Future<Either<IHomeErrors, int>> call(HistorySendEntity valor);
}

class CreateItemUsecase implements ICreateItemUsecase {
  final IHomeRepository _repository;

  CreateItemUsecase(this._repository);

  @override
  Future<Either<IHomeErrors, int>> call(HistorySendEntity valor) => _repository.createItem(valor);
}
