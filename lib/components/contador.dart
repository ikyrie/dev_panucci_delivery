import 'package:flutter/material.dart';
import 'package:panucci_delivery/models/carrinho_provider.dart';

class Contador extends StatefulWidget {
const Contador({ Key? key }) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            setState(() {
              if(CarrinhoProvider.of(context).carrinhoCounter > 0) {
              }
            });
          },
          child: const Icon(Icons.remove_circle_outline, size: 20,),
        ),
        Text(CarrinhoProvider.of(context).carrinhoCounter.toString()),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            setState(() {
              print(CarrinhoProvider.of(context).carrinhoCounter);
            });
          },
          child: const Icon(Icons.add_circle_outline, size: 20,),
        ),
      ],
    );
  }
}
