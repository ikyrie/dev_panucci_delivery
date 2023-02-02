import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
const SearchInput({ Key? key, required this.searchTextController}) : super(key: key);
final TextEditingController searchTextController;

  @override
  Widget build(BuildContext context){
    return TextFormField(
                controller: searchTextController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                    hintText: "Busque um produto",
                    prefixIcon: Icon(Icons.search),
              ),
            );
  }
}