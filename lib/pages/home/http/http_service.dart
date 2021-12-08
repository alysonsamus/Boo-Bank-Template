import 'dart:convert';

import 'package:boobank/pages/home/model/cardbillsmodel.dart';
import 'package:http/http.dart' as http;

class HttpService {
  var extUrl = Uri.parse(
      "https://61a2a5a6014e1900176de9ad.mockapi.io/api/v1/cardbills");

  Future<List<CardBillsModel>> getPost() async {
    http.Response res = await http.get(extUrl);

    if (res.statusCode == 200) {

      List<dynamic> body = jsonDecode(res.body);

      List<CardBillsModel> expenses = body
          .map(
            (dynamic item) => CardBillsModel.fromJson(item),
          )
          .toList();

      return expenses;
    } else {
      throw "Unable to retrieve data";
    }
  }
}
