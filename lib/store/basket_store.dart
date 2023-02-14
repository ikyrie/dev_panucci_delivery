import 'package:mobx/mobx.dart';

part 'basket_store.g.dart';

class BasketStore = _BasketStore with _$BasketStore;

abstract class _BasketStore with Store {

  @observable
  int totalInBasket = 0;

  @action
  void addToBasket() {
    totalInBasket++;
  }

  @action
  void removeFromBasket() {
    totalInBasket--;
  }

}
