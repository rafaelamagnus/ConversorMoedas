// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HistoryStore on _HistoryStoreBase, Store {
  final _$journalsAtom = Atom(name: '_HistoryStoreBase.journals');

  @override
  List<Map<String, dynamic>> get journals {
    _$journalsAtom.reportRead();
    return super.journals;
  }

  @override
  set journals(List<Map<String, dynamic>> value) {
    _$journalsAtom.reportWrite(value, super.journals, () {
      super.journals = value;
    });
  }

  final _$_HistoryStoreBaseActionController =
      ActionController(name: '_HistoryStoreBase');

  @override
  void setJournalsEntity(List<Map<String, dynamic>> value) {
    final _$actionInfo = _$_HistoryStoreBaseActionController.startAction(
        name: '_HistoryStoreBase.setJournalsEntity');
    try {
      return super.setJournalsEntity(value);
    } finally {
      _$_HistoryStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
journals: ${journals}
    ''';
  }
}
