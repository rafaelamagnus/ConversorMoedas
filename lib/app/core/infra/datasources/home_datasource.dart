import 'package:conversormoedas/app/core/infra/models/history_send_model.dart';

abstract class IHomeDatasouce {
  Future<int> createItem(HistorySendModel valor);
  Future<List<Map<String, dynamic>>> getItens();
}
