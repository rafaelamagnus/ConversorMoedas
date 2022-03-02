import 'package:conversormoedas/app/core/domain/entities/history_send_entity.dart';
import 'package:conversormoedas/app/core/domain/errors/home_error.dart';
import 'package:conversormoedas/app/core/domain/repositories/home_repository.dart';
import 'package:conversormoedas/app/core/infra/datasources/home_datasource.dart';
import 'package:conversormoedas/app/core/infra/models/history_send_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepository implements IHomeRepository {
  final IHomeDatasouce _datasource;

  HomeRepository(this._datasource);

  @override
  Future<Either<IHomeErrors, int>> createItem(HistorySendEntity valor) async {
    try {
      final addItem = HistorySendModel.fromUserEntity(valor);
      final result = await _datasource.createItem(addItem);
      return Right(result);
    } catch (_) {
      return Left(NotFoudHomeErrors(message: 'algo errado '));
    }
  }

  @override
  Future<Either<IHomeErrors, List<Map<String, dynamic>>>> getItems() async {
    try {
      final itens = await _datasource.getItens();
      return Right(itens);
    } on IHomeErrors catch (error) {
      return Left(error);
    } catch (_) {
      return Left(NotFoudHomeErrors(message: 'algo errado '));
    }
  }
}
