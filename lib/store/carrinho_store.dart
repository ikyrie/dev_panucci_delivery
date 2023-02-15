import 'package:mobx/mobx.dart';
import 'package:panucci_delivery/models/item.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStore with _$CarrinhoStore;

abstract class _CarrinhoStore with Store {

  @observable
  List<Item> itemsInBasket = <Item>[];

  @observable
  double totalCost = 0;

  @observable
  int totalItemsInBasket = 0;

  @observable
  bool emptyBasket = true;

  void updateBasketState() {
    emptyBasket = itemsInBasket.isEmpty;
  }

  @action
  void addToBasket(Item item) {
    itemsInBasket.add(item);
    updateTotalItemsInBasket();
    updateBasketState();
    updateTotalCost();
  }

  @action
  void removeFromBasket(Item item) {
    itemsInBasket.remove(item);
    updateTotalItemsInBasket();
    updateBasketState();
    updateTotalCost();
  }

  @action
  void updateTotalItemsInBasket() {
    totalItemsInBasket = itemsInBasket.length; 
  }

  @action
  void updateTotalCost() {
    totalCost = 0;
    for (var i = 0; i < itemsInBasket.length; i++) {
      totalCost += itemsInBasket[i].preco;
    }
  }

}
