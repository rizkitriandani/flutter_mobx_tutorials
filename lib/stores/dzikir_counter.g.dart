// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dzikir_counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DzikirCounterStores on _DzikirCounterStores, Store {
  final _$dzikirCountAtom = Atom(name: '_DzikirCounterStores.dzikirCount');

  @override
  int get dzikirCount {
    _$dzikirCountAtom.reportRead();
    return super.dzikirCount;
  }

  @override
  set dzikirCount(int value) {
    _$dzikirCountAtom.reportWrite(value, super.dzikirCount, () {
      super.dzikirCount = value;
    });
  }

  final _$_DzikirCounterStoresActionController =
      ActionController(name: '_DzikirCounterStores');

  @override
  void increaseDzikirCount() {
    final _$actionInfo = _$_DzikirCounterStoresActionController.startAction(
        name: '_DzikirCounterStores.increaseDzikirCount');
    try {
      return super.increaseDzikirCount();
    } finally {
      _$_DzikirCounterStoresActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseDzikirCount() {
    final _$actionInfo = _$_DzikirCounterStoresActionController.startAction(
        name: '_DzikirCounterStores.decreaseDzikirCount');
    try {
      return super.decreaseDzikirCount();
    } finally {
      _$_DzikirCounterStoresActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dzikirCount: ${dzikirCount}
    ''';
  }
}
