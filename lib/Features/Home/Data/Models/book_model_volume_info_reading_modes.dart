import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelVolumeInfoReadingModes {
  late bool text;
  late bool image;

  BookModelVolumeInfoReadingModes();

  factory BookModelVolumeInfoReadingModes.fromJson(Map<String, dynamic> json) => $BookModelVolumeInfoReadingModesFromJson(json);

  Map<String, dynamic> toJson() => $BookModelVolumeInfoReadingModesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}