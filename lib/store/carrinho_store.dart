import 'package:mobx/mobx.dart';
import 'package:panucci_delivery/models/item.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStore with _$CarrinhoStore;

abstract class _CarrinhoStore with Store {

  @observable
  List<Item> itemsInBasket = ObservableList<Item>();

  @observable
  double totalCost = 0;

  @computed
  int get totalItemsInBasket => itemsInBasket.length ;

  @computed
  bool get emptyBasket => itemsInBasket.isEmpty;

  @action
  void addToBasket(Item item) {
    itemsInBasket.add(item);
    updateTotalCost();
  }

  @action
  void removeFromBasket(Item item) {
    itemsInBasket.remove(item);
    updateTotalCost();
  }

  @action
  void updateTotalCost() {
    totalCost = 0;
    for (var i = 0; i < itemsInBasket.length; i++) {
      totalCost += itemsInBasket[i].preco;
    }
  }

}
