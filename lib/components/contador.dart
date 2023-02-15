import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:panucci_delivery/store/carrinho_store.dart';
import 'package:panucci_delivery/store/item_store.dart';
import 'package:provider/provider.dart';

import '../models/item.dart';

class Contador extends StatelessWidget {
Contador({ Key? key, required this.item }) : super(key: key);
final ItemStore itemStore = ItemStore();
final Item item;

  @override
  Widget build(BuildContext context){
    final carrinhoStore = Provider.of<CarrinhoStore>(context, listen: false);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
                if(itemStore.carrinhoCounter > 0) {
                  itemStore.removerItem();
                  carrinhoStore.removeFromBasket(item);
                }
            },
            child: const Icon(Icons.remove_circle_outline, size: 20,),
          ),
          Text(itemStore.carrinhoCounter.toString()),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
                itemStore.adicionarItem();
                carrinhoStore.addToBasket(item);
            },
            child: const Icon(Icons.add_circle_outline, size: 20,),
          ),
        ],
      ),
    );
  }
}
