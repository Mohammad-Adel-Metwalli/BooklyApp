import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelAccessInfoEpub {
  late bool isAvailable;

  BookModelAccessInfoEpub();

  factory BookModelAccessInfoEpub.fromJson(Map<String, dynamic> json) => $BookModelAccessInfoEpubFromJson(json);

  Map<String, dynamic> toJson() => $BookModelAccessInfoEpubToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}