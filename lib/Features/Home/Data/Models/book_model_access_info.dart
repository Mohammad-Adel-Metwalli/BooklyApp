import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';
import 'book_model_access_info_epub.dart';
import 'book_model_access_info_pdf.dart';

@JsonSerializable()
class BookModelAccessInfo {
  late String country;
  late String viewability;
  late bool embeddable;
  late bool publicDomain;
  late String textToSpeechPermission;
  late BookModelAccessInfoEpub epub;
  late BookModelAccessInfoPdf pdf;
  late String webReaderLink;
  late String accessViewStatus;
  late bool quoteSharingAllowed;

  BookModelAccessInfo();

  factory BookModelAccessInfo.fromJson(Map<String, dynamic> json) => $BookModelAccessInfoFromJson(json);

  Map<String, dynamic> toJson() => $BookModelAccessInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}