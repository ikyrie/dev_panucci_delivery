// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemStore on _ItemStore, Store {
  late final _$carrinhoCounterAtom =
      Atom(name: '_ItemStore.carrinhoCounter', context: context);

  @override
  int get carrinhoCounter {
    _$carrinhoCounterAtom.reportRead();
    return super.carrinhoCounter;
  }

  @override
  set carrinhoCounter(int value) {
    _$carrinhoCounterAtom.reportWrite(value, super.carrinhoCounter, () {
      super.carrinhoCounter = value;
    });
  }

  late final _$_ItemStoreActionController =
      ActionController(name: '_ItemStore', context: context);

  @override
  void adicionarItem() {
    final _$actionInfo = _$_ItemStoreActionController.startAction(
        name: '_ItemStore.adicionarItem');
    try {
      return super.adicionarItem();
    } finally {
      _$_ItemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removerItem() {
    final _$actionInfo = _$_ItemStoreActionController.startAction(
        name: '_ItemStore.removerItem');
    try {
      return super.removerItem();
    } finally {
      _$_ItemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carrinhoCounter: ${carrinhoCounter}
    ''';
  }
}
