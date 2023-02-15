import 'package:flutter/material.dart';

import 'cartao.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key, required this.categoria}) : super(key: key);
  final String categoria;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 150),
        child: ListView.builder(
          itemBuilder: (index, context) {
            return const Cartao();
          },
          scrollDirection: Axis.horizontal,
          itemCount: 10,
        ),
      ),
    );
  }
}
