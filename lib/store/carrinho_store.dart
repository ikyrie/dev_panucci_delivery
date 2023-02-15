import 'package:mobx/mobx.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStore with _$CarrinhoStore;

abstract class _CarrinhoStore with Store {

  @observable
  int totalInBasket = 0;

  @computed
  bool get emptyBasket => totalInBasket > 0;

  @action
  void addToBasket() {
    totalInBasket++;
  }

  @action
  void removeFromBasket() {
    totalInBasket--;
  }

}
