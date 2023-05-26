import 'package:bookly_app/generated/json/base/json_convert_content.dart';
import 'package:bookly_app/Features/Home/Data/Models/book_model.dart';

BookModel $BookModelEntityFromJson(Map<String, dynamic> json) {
	final BookModel bookModelEntity = BookModel();
	final String? kind = jsonConvert.convert<String>(json['kind']);
	if (kind != null) {
		bookModelEntity.kind = kind;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		bookModelEntity.id = id;
	}
	final String? etag = jsonConvert.convert<String>(json['etag']);
	if (etag != null) {
		bookModelEntity.etag = etag;
	}
	final String? selfLink = jsonConvert.convert<String>(json['selfLink']);
	if (selfLink != null) {
		bookModelEntity.selfLink = selfLink;
	}
	final BookModelVolumeInfo? volumeInfo = jsonConvert.convert<BookModelVolumeInfo>(json['volumeInfo']);
	if (volumeInfo != null) {
		bookModelEntity.volumeInfo = volumeInfo;
	}
	final BookModelSaleInfo? saleInfo = jsonConvert.convert<BookModelSaleInfo>(json['saleInfo']);
	if (saleInfo != null) {
		bookModelEntity.saleInfo = saleInfo;
	}
	final BookModelAccessInfo? accessInfo = jsonConvert.convert<BookModelAccessInfo>(json['accessInfo']);
	if (accessInfo != null) {
		bookModelEntity.accessInfo = accessInfo;
	}
	final BookModelSearchInfo? searchInfo = jsonConvert.convert<BookModelSearchInfo>(json['searchInfo']);
	if (searchInfo != null) {
		bookModelEntity.searchInfo = searchInfo;
	}
	return bookModelEntity;
}

Map<String, dynamic> $BookModelEntityToJson(BookModel entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['kind'] = entity.kind;
	data['id'] = entity.id;
	data['etag'] = entity.etag;
	data['selfLink'] = entity.selfLink;
	data['volumeInfo'] = entity.volumeInfo.toJson();
	data['saleInfo'] = entity.saleInfo.toJson();
	data['accessInfo'] = entity.accessInfo.toJson();
	data['searchInfo'] = entity.searchInfo.toJson();
	return data;
}

BookModelVolumeInfo $BookModelVolumeInfoFromJson(Map<String, dynamic> json) {
	final BookModelVolumeInfo bookModelVolumeInfo = BookModelVolumeInfo();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		bookModelVolumeInfo.title = title;
	}
	final String? subtitle = jsonConvert.convert<String>(json['subtitle']);
	if (subtitle != null) {
		bookModelVolumeInfo.subtitle = subtitle;
	}
	final List<String>? authors = jsonConvert.convertListNotNull<String>(json['authors']);
	if (authors != null) {
		bookModelVolumeInfo.authors = authors;
	}
	final String? publisher = jsonConvert.convert<String>(json['publisher']);
	if (publisher != null) {
		bookModelVolumeInfo.publisher = publisher;
	}
	final String? publishedDate = jsonConvert.convert<String>(json['publishedDate']);
	if (publishedDate != null) {
		bookModelVolumeInfo.publishedDate = publishedDate;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		bookModelVolumeInfo.description = description;
	}
	final List<BookModelVolumeInfoIndustryIdentifiers>? industryIdentifiers = jsonConvert.convertListNotNull<BookModelVolumeInfoIndustryIdentifiers>(json['industryIdentifiers']);
	if (industryIdentifiers != null) {
		bookModelVolumeInfo.industryIdentifiers = industryIdentifiers;
	}
	final BookModelVolumeInfoReadingModes? readingModes = jsonConvert.convert<BookModelVolumeInfoReadingModes>(json['readingModes']);
	if (readingModes != null) {
		bookModelVolumeInfo.readingModes = readingModes;
	}
	final int? pageCount = jsonConvert.convert<int>(json['pageCount']);
	if (pageCount != null) {
		bookModelVolumeInfo.pageCount = pageCount;
	}
	final String? printType = jsonConvert.convert<String>(json['printType']);
	if (printType != null) {
		bookModelVolumeInfo.printType = printType;
	}
	final List<String>? categories = jsonConvert.convertListNotNull<String>(json['categories']);
	if (categories != null) {
		bookModelVolumeInfo.categories = categories;
	}
	final String? maturityRating = jsonConvert.convert<String>(json['maturityRating']);
	if (maturityRating != null) {
		bookModelVolumeInfo.maturityRating = maturityRating;
	}
	final bool? allowAnonLogging = jsonConvert.convert<bool>(json['allowAnonLogging']);
	if (allowAnonLogging != null) {
		bookModelVolumeInfo.allowAnonLogging = allowAnonLogging;
	}
	final String? contentVersion = jsonConvert.convert<String>(json['contentVersion']);
	if (contentVersion != null) {
		bookModelVolumeInfo.contentVersion = contentVersion;
	}
	final BookModelVolumeInfoPanelizationSummary? panelizationSummary = jsonConvert.convert<BookModelVolumeInfoPanelizationSummary>(json['panelizationSummary']);
	if (panelizationSummary != null) {
		bookModelVolumeInfo.panelizationSummary = panelizationSummary;
	}
	final BookModelVolumeInfoImageLinks? imageLinks = jsonConvert.convert<BookModelVolumeInfoImageLinks>(json['imageLinks']);
	if (imageLinks != null) {
		bookModelVolumeInfo.imageLinks = imageLinks;
	}
	final String? language = jsonConvert.convert<String>(json['language']);
	if (language != null) {
		bookModelVolumeInfo.language = language;
	}
	final String? previewLink = jsonConvert.convert<String>(json['previewLink']);
	if (previewLink != null) {
		bookModelVolumeInfo.previewLink = previewLink;
	}
	final String? infoLink = jsonConvert.convert<String>(json['infoLink']);
	if (infoLink != null) {
		bookModelVolumeInfo.infoLink = infoLink;
	}
	final String? canonicalVolumeLink = jsonConvert.convert<String>(json['canonicalVolumeLink']);
	if (canonicalVolumeLink != null) {
		bookModelVolumeInfo.canonicalVolumeLink = canonicalVolumeLink;
	}
	return bookModelVolumeInfo;
}

Map<String, dynamic> $BookModelVolumeInfoToJson(BookModelVolumeInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['subtitle'] = entity.subtitle;
	data['authors'] =  entity.authors;
	data['publisher'] = entity.publisher;
	data['publishedDate'] = entity.publishedDate;
	data['description'] = entity.description;
	data['industryIdentifiers'] =  entity.industryIdentifiers.map((v) => v.toJson()).toList();
	data['readingModes'] = entity.readingModes.toJson();
	data['pageCount'] = entity.pageCount;
	data['printType'] = entity.printType;
	data['categories'] =  entity.categories;
	data['maturityRating'] = entity.maturityRating;
	data['allowAnonLogging'] = entity.allowAnonLogging;
	data['contentVersion'] = entity.contentVersion;
	data['panelizationSummary'] = entity.panelizationSummary.toJson();
	data['imageLinks'] = entity.imageLinks.toJson();
	data['language'] = entity.language;
	data['previewLink'] = entity.previewLink;
	data['infoLink'] = entity.infoLink;
	data['canonicalVolumeLink'] = entity.canonicalVolumeLink;
	return data;
}

BookModelVolumeInfoIndustryIdentifiers $BookModelVolumeInfoIndustryIdentifiersFromJson(Map<String, dynamic> json) {
	final BookModelVolumeInfoIndustryIdentifiers bookModelVolumeInfoIndustryIdentifiers = BookModelVolumeInfoIndustryIdentifiers();
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		bookModelVolumeInfoIndustryIdentifiers.type = type;
	}
	final String? identifier = jsonConvert.convert<String>(json['identifier']);
	if (identifier != null) {
		bookModelVolumeInfoIndustryIdentifiers.identifier = identifier;
	}
	return bookModelVolumeInfoIndustryIdentifiers;
}

Map<String, dynamic> $BookModelVolumeInfoIndustryIdentifiersToJson(BookModelVolumeInfoIndustryIdentifiers entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['identifier'] = entity.identifier;
	return data;
}

BookModelVolumeInfoReadingModes $BookModelVolumeInfoReadingModesFromJson(Map<String, dynamic> json) {
	final BookModelVolumeInfoReadingModes bookModelVolumeInfoReadingModes = BookModelVolumeInfoReadingModes();
	final bool? text = jsonConvert.convert<bool>(json['text']);
	if (text != null) {
		bookModelVolumeInfoReadingModes.text = text;
	}
	final bool? image = jsonConvert.convert<bool>(json['image']);
	if (image != null) {
		bookModelVolumeInfoReadingModes.image = image;
	}
	return bookModelVolumeInfoReadingModes;
}

Map<String, dynamic> $BookModelVolumeInfoReadingModesToJson(BookModelVolumeInfoReadingModes entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['text'] = entity.text;
	data['image'] = entity.image;
	return data;
}

BookModelVolumeInfoPanelizationSummary $BookModelVolumeInfoPanelizationSummaryFromJson(Map<String, dynamic> json) {
	final BookModelVolumeInfoPanelizationSummary bookModelVolumeInfoPanelizationSummary = BookModelVolumeInfoPanelizationSummary();
	final bool? containsEpubBubbles = jsonConvert.convert<bool>(json['containsEpubBubbles']);
	if (containsEpubBubbles != null) {
		bookModelVolumeInfoPanelizationSummary.containsEpubBubbles = containsEpubBubbles;
	}
	final bool? containsImageBubbles = jsonConvert.convert<bool>(json['containsImageBubbles']);
	if (containsImageBubbles != null) {
		bookModelVolumeInfoPanelizationSummary.containsImageBubbles = containsImageBubbles;
	}
	return bookModelVolumeInfoPanelizationSummary;
}

Map<String, dynamic> $BookModelVolumeInfoPanelizationSummaryToJson(BookModelVolumeInfoPanelizationSummary entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['containsEpubBubbles'] = entity.containsEpubBubbles;
	data['containsImageBubbles'] = entity.containsImageBubbles;
	return data;
}

BookModelVolumeInfoImageLinks $BookModelVolumeInfoImageLinksFromJson(Map<String, dynamic> json) {
	final BookModelVolumeInfoImageLinks bookModelVolumeInfoImageLinks = BookModelVolumeInfoImageLinks();
	final String? smallThumbnail = jsonConvert.convert<String>(json['smallThumbnail']);
	if (smallThumbnail != null) {
		bookModelVolumeInfoImageLinks.smallThumbnail = smallThumbnail;
	}
	final String? thumbnail = jsonConvert.convert<String>(json['thumbnail']);
	if (thumbnail != null) {
		bookModelVolumeInfoImageLinks.thumbnail = thumbnail;
	}
	return bookModelVolumeInfoImageLinks;
}

Map<String, dynamic> $BookModelVolumeInfoImageLinksToJson(BookModelVolumeInfoImageLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['smallThumbnail'] = entity.smallThumbnail;
	data['thumbnail'] = entity.thumbnail;
	return data;
}

BookModelSaleInfo $BookModelSaleInfoFromJson(Map<String, dynamic> json) {
	final BookModelSaleInfo bookModelSaleInfo = BookModelSaleInfo();
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		bookModelSaleInfo.country = country;
	}
	final String? saleability = jsonConvert.convert<String>(json['saleability']);
	if (saleability != null) {
		bookModelSaleInfo.saleability = saleability;
	}
	final bool? isEbook = jsonConvert.convert<bool>(json['isEbook']);
	if (isEbook != null) {
		bookModelSaleInfo.isEbook = isEbook;
	}
	return bookModelSaleInfo;
}

Map<String, dynamic> $BookModelSaleInfoToJson(BookModelSaleInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['country'] = entity.country;
	data['saleability'] = entity.saleability;
	data['isEbook'] = entity.isEbook;
	return data;
}

BookModelAccessInfo $BookModelAccessInfoFromJson(Map<String, dynamic> json) {
	final BookModelAccessInfo bookModelAccessInfo = BookModelAccessInfo();
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		bookModelAccessInfo.country = country;
	}
	final String? viewability = jsonConvert.convert<String>(json['viewability']);
	if (viewability != null) {
		bookModelAccessInfo.viewability = viewability;
	}
	final bool? embeddable = jsonConvert.convert<bool>(json['embeddable']);
	if (embeddable != null) {
		bookModelAccessInfo.embeddable = embeddable;
	}
	final bool? publicDomain = jsonConvert.convert<bool>(json['publicDomain']);
	if (publicDomain != null) {
		bookModelAccessInfo.publicDomain = publicDomain;
	}
	final String? textToSpeechPermission = jsonConvert.convert<String>(json['textToSpeechPermission']);
	if (textToSpeechPermission != null) {
		bookModelAccessInfo.textToSpeechPermission = textToSpeechPermission;
	}
	final BookModelAccessInfoEpub? epub = jsonConvert.convert<BookModelAccessInfoEpub>(json['epub']);
	if (epub != null) {
		bookModelAccessInfo.epub = epub;
	}
	final BookModelAccessInfoPdf? pdf = jsonConvert.convert<BookModelAccessInfoPdf>(json['pdf']);
	if (pdf != null) {
		bookModelAccessInfo.pdf = pdf;
	}
	final String? webReaderLink = jsonConvert.convert<String>(json['webReaderLink']);
	if (webReaderLink != null) {
		bookModelAccessInfo.webReaderLink = webReaderLink;
	}
	final String? accessViewStatus = jsonConvert.convert<String>(json['accessViewStatus']);
	if (accessViewStatus != null) {
		bookModelAccessInfo.accessViewStatus = accessViewStatus;
	}
	final bool? quoteSharingAllowed = jsonConvert.convert<bool>(json['quoteSharingAllowed']);
	if (quoteSharingAllowed != null) {
		bookModelAccessInfo.quoteSharingAllowed = quoteSharingAllowed;
	}
	return bookModelAccessInfo;
}

Map<String, dynamic> $BookModelAccessInfoToJson(BookModelAccessInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['country'] = entity.country;
	data['viewability'] = entity.viewability;
	data['embeddable'] = entity.embeddable;
	data['publicDomain'] = entity.publicDomain;
	data['textToSpeechPermission'] = entity.textToSpeechPermission;
	data['epub'] = entity.epub.toJson();
	data['pdf'] = entity.pdf.toJson();
	data['webReaderLink'] = entity.webReaderLink;
	data['accessViewStatus'] = entity.accessViewStatus;
	data['quoteSharingAllowed'] = entity.quoteSharingAllowed;
	return data;
}

BookModelAccessInfoEpub $BookModelAccessInfoEpubFromJson(Map<String, dynamic> json) {
	final BookModelAccessInfoEpub bookModelAccessInfoEpub = BookModelAccessInfoEpub();
	final bool? isAvailable = jsonConvert.convert<bool>(json['isAvailable']);
	if (isAvailable != null) {
		bookModelAccessInfoEpub.isAvailable = isAvailable;
	}
	return bookModelAccessInfoEpub;
}

Map<String, dynamic> $BookModelAccessInfoEpubToJson(BookModelAccessInfoEpub entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['isAvailable'] = entity.isAvailable;
	return data;
}

BookModelAccessInfoPdf $BookModelAccessInfoPdfFromJson(Map<String, dynamic> json) {
	final BookModelAccessInfoPdf bookModelAccessInfoPdf = BookModelAccessInfoPdf();
	final bool? isAvailable = jsonConvert.convert<bool>(json['isAvailable']);
	if (isAvailable != null) {
		bookModelAccessInfoPdf.isAvailable = isAvailable;
	}
	final String? acsTokenLink = jsonConvert.convert<String>(json['acsTokenLink']);
	if (acsTokenLink != null) {
		bookModelAccessInfoPdf.acsTokenLink = acsTokenLink;
	}
	return bookModelAccessInfoPdf;
}

Map<String, dynamic> $BookModelAccessInfoPdfToJson(BookModelAccessInfoPdf entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['isAvailable'] = entity.isAvailable;
	data['acsTokenLink'] = entity.acsTokenLink;
	return data;
}

BookModelSearchInfo $BookModelSearchInfoFromJson(Map<String, dynamic> json) {
	final BookModelSearchInfo bookModelSearchInfo = BookModelSearchInfo();
	final String? textSnippet = jsonConvert.convert<String>(json['textSnippet']);
	if (textSnippet != null) {
		bookModelSearchInfo.textSnippet = textSnippet;
	}
	return bookModelSearchInfo;
}

Map<String, dynamic> $BookModelSearchInfoToJson(BookModelSearchInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['textSnippet'] = entity.textSnippet;
	return data;
}