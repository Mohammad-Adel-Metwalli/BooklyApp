import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelAccessInfoPdf {
  late bool isAvailable;
  late String acsTokenLink;

  BookModelAccessInfoPdf();

  factory BookModelAccessInfoPdf.fromJson(Map<String, dynamic> json) => $BookModelAccessInfoPdfFromJson(json);

  Map<String, dynamic> toJson() => $BookModelAccessInfoPdfToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
