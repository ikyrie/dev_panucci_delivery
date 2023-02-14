import 'package:flutter/material.dart';
import 'package:panucci_delivery/models/carrinho_provider.dart';
import 'package:panucci_delivery/screens/home.dart';
import 'package:panucci_delivery/store/basket_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const PanucciDelivery());
}

class PanucciDelivery extends StatelessWidget {
const PanucciDelivery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red), useMaterial3: true),
      home: Provider(create: (_) => BasketStore(),child: CarrinhoProvider(carrinhoCounter: 0, child: Home())),
    );
  }
}
