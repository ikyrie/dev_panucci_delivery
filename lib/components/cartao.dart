import 'package:flutter/material.dart';
import 'package:panucci_delivery/components/contador.dart';

class Cartao extends StatelessWidget {
const Cartao({ Key? key }) : super(key: key);

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
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text("Pão Rapid10", style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text("R\$40,00"),
                  ),
                  Contador(),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
