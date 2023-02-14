// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BasketStore on _BasketStore, Store {
  late final _$totalInBasketAtom =
      Atom(name: '_BasketStore.totalInBasket', context: context);

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

  late final _$_BasketStoreActionController =
      ActionController(name: '_BasketStore', context: context);

  @override
  void addToBasket() {
    final _$actionInfo = _$_BasketStoreActionController.startAction(
        name: '_BasketStore.addToBasket');
    try {
      return super.addToBasket();
    } finally {
      _$_BasketStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromBasket() {
    final _$actionInfo = _$_BasketStoreActionController.startAction(
        name: '_BasketStore.removeFromBasket');
    try {
      return super.removeFromBasket();
    } finally {
      _$_BasketStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalInBasket: ${totalInBasket}
    ''';
  }
}
