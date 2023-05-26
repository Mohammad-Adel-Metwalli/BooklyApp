import 'package:bookly_app/generated/json/base/json_field.dart';
import 'package:bookly_app/generated/json/book_model_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class BookModel {
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
	String toString() {
		return jsonEncode(this);
	}
}

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

@JsonSerializable()
class BookModelSaleInfo {
	late String country;
	late String saleability;
	late bool isEbook;

	BookModelSaleInfo();

	factory BookModelSaleInfo.fromJson(Map<String, dynamic> json) => $BookModelSaleInfoFromJson(json);

	Map<String, dynamic> toJson() => $BookModelSaleInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

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