import 'package:boobank/pages/home/http/http_service.dart';
import 'package:boobank/pages/home/model/cardbillsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HttpPage extends StatelessWidget {
  final HttpService _httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas'),
        ),
        body: FutureBuilder(
            future: _httpService.getPost(),
            builder: (BuildContext context,
                AsyncSnapshot<List<CardBillsModel>> snapshot) {
              if (snapshot.hasData) {

                //print('snapshot');

                List<CardBillsModel>? expenses = snapshot.data;

               return ListView(
                  children: expenses!.map((CardBillsModel model) => ListTile(
                        title: Text(model.description,style: TextStyle(color: Colors.orange),),
                        subtitle: Text("${model.id}"),

                      )).toList(),
                );

              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
