// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarrinhoStore on _CarrinhoStore, Store {
  late final _$itemsInBasketAtom =
      Atom(name: '_CarrinhoStore.itemsInBasket', context: context);

  @override
  List<Item> get itemsInBasket {
    _$itemsInBasketAtom.reportRead();
    return super.itemsInBasket;
  }

  @override
  set itemsInBasket(List<Item> value) {
    _$itemsInBasketAtom.reportWrite(value, super.itemsInBasket, () {
      super.itemsInBasket = value;
    });
  }

  late final _$totalCostAtom =
      Atom(name: '_CarrinhoStore.totalCost', context: context);

  @override
  double get totalCost {
    _$totalCostAtom.reportRead();
    return super.totalCost;
  }

  @override
  set totalCost(double value) {
    _$totalCostAtom.reportWrite(value, super.totalCost, () {
      super.totalCost = value;
    });
  }

  late final _$totalItemsInBasketAtom =
      Atom(name: '_CarrinhoStore.totalItemsInBasket', context: context);

  @override
  int get totalItemsInBasket {
    _$totalItemsInBasketAtom.reportRead();
    return super.totalItemsInBasket;
  }

  @override
  set totalItemsInBasket(int value) {
    _$totalItemsInBasketAtom.reportWrite(value, super.totalItemsInBasket, () {
      super.totalItemsInBasket = value;
    });
  }

  late final _$emptyBasketAtom =
      Atom(name: '_CarrinhoStore.emptyBasket', context: context);

  @override
  bool get emptyBasket {
    _$emptyBasketAtom.reportRead();
    return super.emptyBasket;
  }

  @override
  set emptyBasket(bool value) {
    _$emptyBasketAtom.reportWrite(value, super.emptyBasket, () {
      super.emptyBasket = value;
    });
  }

  late final _$_CarrinhoStoreActionController =
      ActionController(name: '_CarrinhoStore', context: context);

  @override
  void addToBasket(Item item) {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.addToBasket');
    try {
      return super.addToBasket(item);
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromBasket(Item item) {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.removeFromBasket');
    try {
      return super.removeFromBasket(item);
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTotalItemsInBasket() {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.updateTotalItemsInBasket');
    try {
      return super.updateTotalItemsInBasket();
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTotalCost() {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.updateTotalCost');
    try {
      return super.updateTotalCost();
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
itemsInBasket: ${itemsInBasket},
totalCost: ${totalCost},
totalItemsInBasket: ${totalItemsInBasket},
emptyBasket: ${emptyBasket}
    ''';
  }
}
