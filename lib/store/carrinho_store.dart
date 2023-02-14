import 'package:mobx/mobx.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStore with _$CarrinhoStore;

abstract class _CarrinhoStore with Store {
  @observable
  int carrinhoCounter = 0;


  @action
  void adicionarItem() {
    carrinhoCounter++;
  }

  @action
  void removerItem() {
    carrinhoCounter--;
  }

}
