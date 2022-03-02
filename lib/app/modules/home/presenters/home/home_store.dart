import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  double? valor;

  @observable
  double? dolar;

  @observable
  double? euro;

  @action
  void setvalor(String value) => valor = double.parse(value);

  @action
  void setdolar(double value) => dolar = value;

  @action
  void seteuro(double value) => euro = value;
}
