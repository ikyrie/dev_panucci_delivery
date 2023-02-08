import 'package:flutter/material.dart';
import 'package:panucci_delivery/components/cartao.dart';
import 'package:panucci_delivery/models/carrinho_provider.dart';
import '../components/search_input.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CarrinhoProvider carrinho = CarrinhoProvider.of(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
                child: SearchInput(searchTextController: searchTextController)),
            const SliverToBoxAdapter(child: Text("Categoria")),
            SliverToBoxAdapter(child: ConstrainedBox(constraints: const BoxConstraints(maxHeight: 150), child: ListView.builder(itemBuilder: (index, context){return const Cartao();}, scrollDirection: Axis.horizontal, itemCount: 10,),),),
            const SliverToBoxAdapter(child: Text("Categoria")),
            SliverToBoxAdapter(child: ConstrainedBox(constraints: const BoxConstraints(maxHeight: 150), child: ListView.builder(itemBuilder: (index, context){return const Cartao();}, scrollDirection: Axis.horizontal, itemCount: 10,),),),
            const SliverToBoxAdapter(child: Text("Categoria")),
            SliverToBoxAdapter(child: ConstrainedBox(constraints: const BoxConstraints(maxHeight: 150), child: ListView.builder(itemBuilder: (index, context){return const Cartao();}, scrollDirection: Axis.horizontal, itemCount: 10,),),),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.surfaceTint),
                  child: Text(carrinho.carrinhoCounter.toString()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


