import 'package:bookly_app/generated/json/base/json_field.dart';
import 'package:bookly_app/generated/json/book_model_entity.g.dart';
import 'dart:convert';
import 'book_model_access_info.dart';
import 'book_model_sale_info.dart';
import 'book_model_search_info.dart';
import 'book_model_volume_info.dart';

@JsonSerializable()
class BookModel
{
	late String kind;
	late String id;
	late String etag;
	late String selfLink;
	late BookModelVolumeInfo volumeInfo;
	late BookModelSaleInfo saleInfo;
	late BookModelAccessInfo accessInfo;
	late BookModelSearchInfo searchInfo;

	BookModel();

	factory BookModel.fromJson(Map<String, dynamic> json) => $BookModelEntityFromJson(json);

	Map<String, dynamic> toJson() => $BookModelEntityToJson(this);

	@override
	String toString()
	{
		return jsonEncode(this);
	}
}
