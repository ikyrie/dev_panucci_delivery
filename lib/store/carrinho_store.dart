import 'package:mobx/mobx.dart';
import 'package:panucci_delivery/models/carrinho.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStore with _$CarrinhoStore;
final Carrinho carrinho = Carrinho(0);

abstract class _CarrinhoStore with Store {
  @observable
  int carrinhoCounter = 0;

  @observable
  int totalDeItens = 0;

  @action
  void adicionarItem() {
    carrinhoCounter++;
    totalDeItens++;
    carrinho.adicionarItemNoTotal();
    print(totalDeItens);
    print('Items no carrinho: ' + carrinho.totalDeItens.toString());
  }

  @action
  void removerItem() {
    carrinhoCounter--;
    totalDeItens--;
    carrinho.removerItemNoTotal();
    print(totalDeItens);
    print('Items no carrinho: ' + carrinho.totalDeItens.toString());
  }

}
