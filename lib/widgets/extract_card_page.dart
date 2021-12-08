import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExtractCardPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Lista de Compras no Cartão'),),
      body: Container(
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextButton(onPressed: ()=>Get.toNamed('/http/'), child: Text('HTTP List', style: TextStyle(fontSize: 20))),

            TextButton(onPressed: (){}, child: Text('Get Connect', style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }

}