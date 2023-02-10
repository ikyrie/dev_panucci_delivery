import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:panucci_delivery/store/carrinho_store.dart';

class Contador extends StatelessWidget {
Contador({ Key? key }) : super(key: key);
final CarrinhoStore carrinhoStore = CarrinhoStore();

  @override
  Widget build(BuildContext context){
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
                if(carrinhoStore.carrinhoCounter > 0) {
                  carrinhoStore.removerItem();
                }
            },
            child: const Icon(Icons.remove_circle_outline, size: 20,),
          ),
          Text(carrinhoStore.carrinhoCounter.toString()),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
                carrinhoStore.adicionarItem();
                print(carrinhoStore.carrinhoCounter);
            },
            child: const Icon(Icons.add_circle_outline, size: 20,),
          ),
        ],
      ),
    );
  }
}
