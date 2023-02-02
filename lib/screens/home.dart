import 'package:flutter/material.dart';

import '../components/search_input.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
                child: SearchInput(searchTextController: searchTextController)),
            SliverToBoxAdapter(child: Text("Categoria")),
            SliverToBoxAdapter(child: Container(height: 120, child: ListView.builder(itemBuilder: (index, context){return Card(child: Text('item'),);}, scrollDirection: Axis.horizontal, itemCount: 20,),),),
            SliverToBoxAdapter(child: Text("Categoria")),
            SliverToBoxAdapter(child: Container(height: 120, child: ListView.builder(itemBuilder: (index, context){return Card(child: Text('item'),);}, scrollDirection: Axis.horizontal, itemCount: 20,),),),
            SliverToBoxAdapter(child: Text("Categoria")),
            SliverToBoxAdapter(child: Container(height: 120, child: ListView.builder(itemBuilder: (index, context){return Card(child: Text('item'),);}, scrollDirection: Axis.horizontal, itemCount: 20,),),),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.surfaceTint),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


