import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelSaleInfo {
  late String country;
  late String saleability;
  late bool isEbook;

  BookModelSaleInfo();

  factory BookModelSaleInfo.fromJson(Map<String, dynamic> json) => $BookModelSaleInfoFromJson(json);

  Map<String, dynamic> toJson() => $BookModelSaleInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}