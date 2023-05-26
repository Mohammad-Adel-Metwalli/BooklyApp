import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';
import 'book_model_volume_info_image_links.dart';
import 'book_model_volume_info_industry_identifiers.dart';
import 'book_model_volume_info_panelization_summary.dart';
import 'book_model_volume_info_reading_modes.dart';

@JsonSerializable()
class BookModelVolumeInfo {
  late String title;
  late String subtitle;
  late List<String> authors;
  late String publisher;
  late String publishedDate;
  late String description;
  late List<BookModelVolumeInfoIndustryIdentifiers> industryIdentifiers;
  late BookModelVolumeInfoReadingModes readingModes;
  late int pageCount;
  late String printType;
  late List<String> categories;
  late String maturityRating;
  late bool allowAnonLogging;
  late String contentVersion;
  late BookModelVolumeInfoPanelizationSummary panelizationSummary;
  late BookModelVolumeInfoImageLinks imageLinks;
  late String language;
  late String previewLink;
  late String infoLink;
  late String canonicalVolumeLink;

  BookModelVolumeInfo();

  factory BookModelVolumeInfo.fromJson(Map<String, dynamic> json) => $BookModelVolumeInfoFromJson(json);

  Map<String, dynamic> toJson() => $BookModelVolumeInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}