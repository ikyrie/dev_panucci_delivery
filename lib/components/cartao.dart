import 'package:flutter/material.dart';
import 'package:panucci_delivery/components/contador.dart';

import '../models/item.dart';

class Cartao extends StatelessWidget {
const Cartao({ Key? key, required this.item }) : super(key: key);
final Item item;

  @override
  Widget build(BuildContext context){
    return Card(
      clipBehavior: Clip.hardEdge,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 134),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Image(
              image: AssetImage("assets/images/coxinhas.png"),
              width: double.infinity,
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(item.nome, style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text("R\$ ${item.preco}"),
                  ),
                  Contador(item: item),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
