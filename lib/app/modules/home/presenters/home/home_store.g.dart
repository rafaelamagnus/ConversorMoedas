// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$valorAtom = Atom(name: 'HomeStoreBase.valor');

  @override
  double? get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(double? value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$dolarAtom = Atom(name: 'HomeStoreBase.dolar');

  @override
  double? get dolar {
    _$dolarAtom.reportRead();
    return super.dolar;
  }

  @override
  set dolar(double? value) {
    _$dolarAtom.reportWrite(value, super.dolar, () {
      super.dolar = value;
    });
  }

  final _$euroAtom = Atom(name: 'HomeStoreBase.euro');

  @override
  double? get euro {
    _$euroAtom.reportRead();
    return super.euro;
  }

  @override
  set euro(double? value) {
    _$euroAtom.reportWrite(value, super.euro, () {
      super.euro = value;
    });
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void setvalor(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setvalor');
    try {
      return super.setvalor(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setdolar(double value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setdolar');
    try {
      return super.setdolar(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void seteuro(double value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.seteuro');
    try {
      return super.seteuro(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valor: ${valor},
dolar: ${dolar},
euro: ${euro}
    ''';
  }
}
