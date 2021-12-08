import 'dart:convert';

class CardBillsModel {
  final String createdAt;
  final String description;
  final String price;
  final String place;
  final String id;

  CardBillsModel(
      this.createdAt, this.description, this.price, this.place, this.id);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'description': description,
      'price': price,
      'place': place,
    };
  }

  factory CardBillsModel.fromJson(Map<String, dynamic> json) {
    //if(map == null ) return null;
   return CardBillsModel(json['createdAt'], json['Description'],
        json['Price'], json['Place'], json['id']);
  }

  String toJson() => json.encode(toMap());




}
