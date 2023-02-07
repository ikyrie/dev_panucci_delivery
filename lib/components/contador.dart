import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
const Contador({ Key? key }) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _counter = 0;
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            setState(() {
              if(_counter > 0) {
                _counter--;
              }
            });
          },
          child: const Icon(Icons.remove_circle_outline, size: 20,),
        ),
        Text(_counter.toString()),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            setState(() {
              _counter++;
            });
          },
          child: const Icon(Icons.add_circle_outline, size: 20,),
        ),
      ],
    );
  }
}
