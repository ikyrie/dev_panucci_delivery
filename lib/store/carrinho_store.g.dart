// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarrinhoStore on _CarrinhoStore, Store {
  Computed<bool>? _$emptyBasketComputed;

  @override
  bool get emptyBasket =>
      (_$emptyBasketComputed ??= Computed<bool>(() => super.emptyBasket,
              name: '_CarrinhoStore.emptyBasket'))
          .value;

  late final _$totalInBasketAtom =
      Atom(name: '_CarrinhoStore.totalInBasket', context: context);

  @override
  int get totalInBasket {
    _$totalInBasketAtom.reportRead();
    return super.totalInBasket;
  }

  @override
  set totalInBasket(int value) {
    _$totalInBasketAtom.reportWrite(value, super.totalInBasket, () {
      super.totalInBasket = value;
    });
  }

  late final _$_CarrinhoStoreActionController =
      ActionController(name: '_CarrinhoStore', context: context);

  @override
  void addToBasket() {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.addToBasket');
    try {
      return super.addToBasket();
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromBasket() {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.removeFromBasket');
    try {
      return super.removeFromBasket();
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalInBasket: ${totalInBasket},
emptyBasket: ${emptyBasket}
    ''';
  }
}
