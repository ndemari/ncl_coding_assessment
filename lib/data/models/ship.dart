class Ship {
  final String? shipName;
  final String? code;
  final int? allowedGuestCount;
  final String? shipDescription;
  final String? shipDescriptionHtml;
  final String? accessCode;
  final String? wesbCode;
  final String? recategorizationDate;
  final String? recategorizationDefaultView;
  final String? name;
  final dynamic storiesHeadlineHtml;
  final dynamic answersHeadlineHtml;
  final List<Legends>? legends;
  final ShipFacts? shipFacts;
  final List<String>? whatsIncluded;
  final List<String>? highlights;
  final String? features;
  final List<String>? imagePath;
  final List<dynamic>? videoList;
  final List<StateroomMetas>? stateroomMetas;
  final String? bgeImagePath;
  final List<OnboardPhones>? onboardPhones;

  Ship({
    this.shipName,
    this.code,
    this.allowedGuestCount,
    this.shipDescription,
    this.shipDescriptionHtml,
    this.accessCode,
    this.wesbCode,
    this.recategorizationDate,
    this.recategorizationDefaultView,
    this.name,
    this.storiesHeadlineHtml,
    this.answersHeadlineHtml,
    this.legends,
    this.shipFacts,
    this.whatsIncluded,
    this.highlights,
    this.features,
    this.imagePath,
    this.videoList,
    this.stateroomMetas,
    this.bgeImagePath,
    this.onboardPhones,
  });

  Ship.fromJson(Map<String, dynamic> json)
      : shipName = json['shipName'] as String?,
        code = json['code'] as String?,
        allowedGuestCount = json['allowedGuestCount'] as int?,
        shipDescription = json['shipDescription'] as String?,
        shipDescriptionHtml = json['shipDescriptionHtml'] as String?,
        accessCode = json['accessCode'] as String?,
        wesbCode = json['wesbCode'] as String?,
        recategorizationDate = json['recategorizationDate'] as String?,
        recategorizationDefaultView = json['recategorizationDefaultView'] as String?,
        name = json['name'] as String?,
        storiesHeadlineHtml = json['storiesHeadlineHtml'],
        answersHeadlineHtml = json['answersHeadlineHtml'],
        legends = (json['legends'] as List?)?.map((dynamic e) => Legends.fromJson(e as Map<String, dynamic>)).toList(),
        shipFacts = (json['shipFacts'] as Map<String, dynamic>?) != null
            ? ShipFacts.fromJson(json['shipFacts'] as Map<String, dynamic>)
            : null,
        whatsIncluded = (json['whatsIncluded'] as List?)?.map((dynamic e) => e as String).toList(),
        highlights = (json['highlights'] as List?)?.map((dynamic e) => e as String).toList(),
        features = json['features'] as String?,
        imagePath = (json['imagePath'] as List?)?.map((dynamic e) => e as String).toList(),
        videoList = json['videoList'] as List?,
        stateroomMetas = (json['stateroomMetas'] as List?)
            ?.map((dynamic e) => StateroomMetas.fromJson(e as Map<String, dynamic>))
            .toList(),
        bgeImagePath = json['bgeImagePath'] as String?,
        onboardPhones = (json['onboard_phones'] as List?)
            ?.map((dynamic e) => OnboardPhones.fromJson(e as Map<String, dynamic>))
            .toList();
}

class Legends {
  final String? legendWeight;
  final String? name;
  final String? description;
  final String? legendImageLink;

  Legends({
    this.legendWeight,
    this.name,
    this.description,
    this.legendImageLink,
  });

  Legends.fromJson(Map<String, dynamic> json)
      : legendWeight = json['legendWeight'] as String?,
        name = json['name'] as String?,
        description = json['description'] as String?,
        legendImageLink = json['legendImageLink'] as String?;
}

class ShipFacts {
  final String? passengerCapacity;
  final String? grossRegisterTonnage;
  final String? overallLength;
  final String? maxBeam;
  final String? draft;
  final String? engines;
  final String? cruiseSpeed;
  final String? crew;
  final String? inauguralDate;
  final String? remodeledDate;

  ShipFacts({
    this.passengerCapacity,
    this.grossRegisterTonnage,
    this.overallLength,
    this.maxBeam,
    this.draft,
    this.engines,
    this.cruiseSpeed,
    this.crew,
    this.inauguralDate,
    this.remodeledDate,
  });

  ShipFacts.fromJson(Map<String, dynamic> json)
      : passengerCapacity = json['passengerCapacity'] as String?,
        grossRegisterTonnage = json['grossRegisterTonnage'] as String?,
        overallLength = json['overallLength'] as String?,
        maxBeam = json['maxBeam'] as String?,
        draft = json['draft'] as String?,
        engines = json['engines'] as String?,
        cruiseSpeed = json['cruiseSpeed'] as String?,
        crew = json['crew'] as String?,
        inauguralDate = json['inauguralDate'] as String?,
        remodeledDate = json['remodeledDate'] as String?;
}

class StateroomMetas {
  final String? categorizationVersion;
  final String? name;
  final String? code;
  final String? accessCode;
  final String? description;
  final String? shortDescription;
  final String? genericCode;
  final List<String>? includedFeatures;
  final String? thumbnailImage;
  final dynamic floorPlanLink;
  final dynamic view360Link;
  final List<String>? imagePath;
  final List<dynamic>? videoList;
  final String? weight;
  final String? featuresHighlights;
  final String? featureHighlights;
  final OverviewImage? overviewImage;
  final List<StateroomSubMetas>? stateroomSubMetas;

  StateroomMetas({
    this.categorizationVersion,
    this.name,
    this.code,
    this.accessCode,
    this.description,
    this.shortDescription,
    this.genericCode,
    this.includedFeatures,
    this.thumbnailImage,
    this.floorPlanLink,
    this.view360Link,
    this.imagePath,
    this.videoList,
    this.weight,
    this.featuresHighlights,
    this.featureHighlights,
    this.overviewImage,
    this.stateroomSubMetas,
  });

  StateroomMetas.fromJson(Map<String, dynamic> json)
      : categorizationVersion = json['categorizationVersion'] as String?,
        name = json['name'] as String?,
        code = json['code'] as String?,
        accessCode = json['accessCode'] as String?,
        description = json['description'] as String?,
        shortDescription = json['shortDescription'] as String?,
        genericCode = json['genericCode'] as String?,
        includedFeatures = (json['includedFeatures'] as List?)?.map((dynamic e) => e as String).toList(),
        thumbnailImage = json['thumbnailImage'] as String?,
        floorPlanLink = json['floorPlanLink'],
        view360Link = json['view360Link'],
        imagePath = (json['imagePath'] as List?)?.map((dynamic e) => e as String).toList(),
        videoList = json['videoList'] as List?,
        weight = json['weight'] as String?,
        featuresHighlights = json['features_highlights'] as String?,
        featureHighlights = json['featureHighlights'] as String?,
        overviewImage = (json['overview_image'] as Map<String, dynamic>?) != null
            ? OverviewImage.fromJson(json['overview_image'] as Map<String, dynamic>)
            : null,
        stateroomSubMetas = (json['stateroomSubMetas'] as List?)
            ?.map((dynamic e) => StateroomSubMetas.fromJson(e as Map<String, dynamic>))
            .toList();
}

class OverviewImage {
  final String? imagePath;
  final String? title;
  final String? alt;

  OverviewImage({
    this.imagePath,
    this.title,
    this.alt,
  });

  OverviewImage.fromJson(Map<String, dynamic> json)
      : imagePath = json['imagePath'] as String?,
        title = json['title'] as String?,
        alt = json['alt'] as String?;
}

class StateroomSubMetas {
  final String? name;
  final String? code;
  final String? accessCode;
  final String? description;
  final String? body;
  final List<ImageLinks>? imageLinks;
  final List<dynamic>? videoList;
  final String? featuresAndHighlights;
  final String? occupancy;
  final String? approximateSize;
  final dynamic view360Link;
  final dynamic featuredTag;
  final dynamic featuredTagDescription;
  final String? marketingTagLine;
  final String? floorPlanLink;
  final String? guaranteeMessage;
  final String? thumbnailImage;
  final String? balconySize;
  final List<StateroomCategories>? stateroomCategories;

  StateroomSubMetas({
    this.name,
    this.code,
    this.accessCode,
    this.description,
    this.body,
    this.imageLinks,
    this.videoList,
    this.featuresAndHighlights,
    this.occupancy,
    this.approximateSize,
    this.view360Link,
    this.featuredTag,
    this.featuredTagDescription,
    this.marketingTagLine,
    this.floorPlanLink,
    this.guaranteeMessage,
    this.thumbnailImage,
    this.balconySize,
    this.stateroomCategories,
  });

  StateroomSubMetas.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        code = json['code'] as String?,
        accessCode = json['accessCode'] as String?,
        description = json['description'] as String?,
        body = json['body'] as String?,
        imageLinks =
            (json['imageLinks'] as List?)?.map((dynamic e) => ImageLinks.fromJson(e as Map<String, dynamic>)).toList(),
        videoList = json['videoList'] as List?,
        featuresAndHighlights = json['featuresAndHighlights'] as String?,
        occupancy = json['occupancy'] as String?,
        approximateSize = json['approximateSize'] as String?,
        view360Link = json['view360Link'],
        featuredTag = json['featuredTag'],
        featuredTagDescription = json['featuredTagDescription'],
        marketingTagLine = json['marketingTagLine'] as String?,
        floorPlanLink = json['floorPlanLink'] as String?,
        guaranteeMessage = json['guaranteeMessage'] as String?,
        thumbnailImage = json['thumbnailImage'] as String?,
        balconySize = json['balconySize'] as String?,
        stateroomCategories = (json['stateroomCategories'] as List?)
            ?.map((dynamic e) => StateroomCategories.fromJson(e as Map<String, dynamic>))
            .toList();
}

class ImageLinks {
  final String? imageHeadLine;
  final String? legendWeight;
  final String? imageLink;

  ImageLinks({
    this.imageHeadLine,
    this.legendWeight,
    this.imageLink,
  });

  ImageLinks.fromJson(Map<String, dynamic> json)
      : imageHeadLine = json['imageHeadLine'] as String?,
        legendWeight = json['legendWeight'] as String?,
        imageLink = json['imageLink'] as String?;
}

class StateroomCategories {
  final String? name;
  final String? code;
  final dynamic description;
  final String? comment;
  final String? positionInShip;
  final String? colorSwatch;
  final String? decks;
  final bool? mandatoryCabin;
  final dynamic upsellStateroomCategory;
  final String? categoryID;

  StateroomCategories({
    this.name,
    this.code,
    this.description,
    this.comment,
    this.positionInShip,
    this.colorSwatch,
    this.decks,
    this.mandatoryCabin,
    this.upsellStateroomCategory,
    this.categoryID,
  });

  StateroomCategories.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        code = json['code'] as String?,
        description = json['description'],
        comment = json['comment'] as String?,
        positionInShip = json['positionInShip'] as String?,
        colorSwatch = json['colorSwatch'] as String?,
        decks = json['decks'] as String?,
        mandatoryCabin = json['mandatoryCabin'] as bool?,
        upsellStateroomCategory = json['upsellStateroomCategory'],
        categoryID = json['categoryID'] as String?;
}

class OnboardPhones {
  final String? name;
  final String? mobileName;
  final String? token;
  final String? phone;
  final bool? locationSharingEnabled;
  final String? venueCode;

  OnboardPhones({
    this.name,
    this.mobileName,
    this.token,
    this.phone,
    this.locationSharingEnabled,
    this.venueCode,
  });

  OnboardPhones.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        mobileName = json['mobileName'] as String?,
        token = json['token'] as String?,
        phone = json['phone'] as String?,
        locationSharingEnabled = json['locationSharingEnabled'] as bool?,
        venueCode = json['venueCode'] as String?;
}
