import 'dart:convert';
import '../../../../generated/json/base/json_field.dart';
import '../../../../generated/json/book_model_entity.g.dart';

@JsonSerializable()
class BookModelVolumeInfoPanelizationSummary {
  late bool containsEpubBubbles;
  late bool containsImageBubbles;

  BookModelVolumeInfoPanelizationSummary();

  factory BookModelVolumeInfoPanelizationSummary.fromJson(Map<String, dynamic> json) => $BookModelVolumeInfoPanelizationSummaryFromJson(json);

  Map<String, dynamic> toJson() => $BookModelVolumeInfoPanelizationSummaryToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}