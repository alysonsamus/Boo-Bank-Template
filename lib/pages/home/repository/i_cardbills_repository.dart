import 'package:boobank/pages/home/model/cardbillsmodel.dart';

abstract class ICardbillsRepository{
  Future<List<CardBillsModel>> findAllBills();
}

