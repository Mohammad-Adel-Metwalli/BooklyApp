import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelVolumeInfoIndustryIdentifiers {
  late String type;
  late String identifier;

  BookModelVolumeInfoIndustryIdentifiers();

  factory BookModelVolumeInfoIndustryIdentifiers.fromJson(Map<String, dynamic> json) => $BookModelVolumeInfoIndustryIdentifiersFromJson(json);

  Map<String, dynamic> toJson() => $BookModelVolumeInfoIndustryIdentifiersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}