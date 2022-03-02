import 'package:mobx/mobx.dart';
part 'history_store.g.dart';

class HistoryStore = _HistoryStoreBase with _$HistoryStore;

abstract class _HistoryStoreBase with Store {
  @observable
  List<Map<String, dynamic>> journals = [];

  @action
  void setJournalsEntity(List<Map<String, dynamic>> value) => journals = value;
}
