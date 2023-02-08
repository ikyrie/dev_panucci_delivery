import 'package:flutter/material.dart';

class CarrinhoProvider extends InheritedWidget {
  const CarrinhoProvider({Key? key, required Widget child, required this.carrinhoCounter}) : super(key: key, child: child);

  final int carrinhoCounter;

  static CarrinhoProvider of(BuildContext context){
    final CarrinhoProvider? result = context.dependOnInheritedWidgetOfExactType<CarrinhoProvider>();
    assert(result != null, "No CarrinhoProvider found in context");
    return result!;
  }
    
  @override
  bool updateShouldNotify(CarrinhoProvider oldWidget) {
    return carrinhoCounter != oldWidget.carrinhoCounter;
  }

}
