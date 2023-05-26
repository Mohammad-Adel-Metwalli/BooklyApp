import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelSearchInfo {
  late String textSnippet;

  BookModelSearchInfo();

  factory BookModelSearchInfo.fromJson(Map<String, dynamic> json) => $BookModelSearchInfoFromJson(json);

  Map<String, dynamic> toJson() => $BookModelSearchInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}