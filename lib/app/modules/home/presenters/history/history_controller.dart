import 'package:conversormoedas/app/core/domain/usecases/get_itens_usecase.dart';
import 'package:conversormoedas/app/modules/home/presenters/history/history_store.dart';
import 'package:mobx/mobx.dart';
part 'history_controller.g.dart';

class HistoryController = _HistoryControllerBase with _$HistoryController;

abstract class _HistoryControllerBase with Store {
  final IGetItensUsecase getItensUsecase;
  final HistoryStore historyStore = HistoryStore();

  _HistoryControllerBase(this.getItensUsecase);
}
