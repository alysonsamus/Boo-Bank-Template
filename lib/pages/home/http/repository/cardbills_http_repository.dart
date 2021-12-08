import 'dart:convert';
import 'package:boobank/pages/home/model/cardbillsmodel.dart';
import 'package:boobank/pages/home/repository/i_cardbills_repository.dart';
import 'package:http/http.dart' as http;

class CardBillsHttpRepository implements ICardbillsRepository{
  @override
  Future<List<CardBillsModel>> findAllBills() async {

    Uri url =" https://61a2a5a6014e1900176de9ad.mockapi.io/api/v1/cardbills" as Uri;
    final response = await http.get(url);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map<CardBillsModel>((resp) => CardBillsModel.fromJson(resp)).toList();




  }

}