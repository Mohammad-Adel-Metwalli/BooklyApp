import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelVolumeInfoImageLinks {
  late String smallThumbnail;
  late String thumbnail;

  BookModelVolumeInfoImageLinks();

  factory BookModelVolumeInfoImageLinks.fromJson(Map<String, dynamic> json) => $BookModelVolumeInfoImageLinksFromJson(json);

  Map<String, dynamic> toJson() => $BookModelVolumeInfoImageLinksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}