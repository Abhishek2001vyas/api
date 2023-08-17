// To parse this JSON data, do
//
//     final qwe = qweFromJson(jsonString);

import 'dart:convert';

Qwe qweFromJson(String str) => Qwe.fromJson(json.decode(str));

String qweToJson(Qwe data) => json.encode(data.toJson());

class Qwe {
  List<QweDatum> data;
  int status;

  Qwe({
    required this.data,
    required this.status,
  });

  factory Qwe.fromJson(Map<String, dynamic> json) => Qwe(
    data: List<QweDatum>.from(json["data"].map((x) => QweDatum.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "status": status,
  };
}

class QweDatum {
  String type;
  String name;
  Model model;
  String component;
  bool open;
  bool isContainer;

  QweDatum({
    required this.type,
    required this.name,
    required this.model,
    required this.component,
    required this.open,
    required this.isContainer,
  });

  factory QweDatum.fromJson(Map<String, dynamic> json) => QweDatum(
    type: json["type"],
    name: json["name"],
    model: Model.fromJson(json["model"]),
    component: json["component"],
    open: json["open"],
    isContainer: json["is_container"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "name": name,
    "model": model.toJson(),
    "component": component,
    "open": open,
    "is_container": isContainer,
  };
}

class Model {
  List<String>? serviceTypes;
  String title;
  String? subTitle;
  int? bgImage;
  String? style;
  List<dynamic>? listSlider;
  String? titleForCar;
  String? titleForEvent;
  String? titleForSpace;
  String? titleForHotel;
  String? titleForTour;
  String? hideFormSearch;
  String? titleForFlight;
  String? singleFormSearch;
  String? bgImageUrl;
  String? desc;
  int? number;
  String? categoryId;
  String? locationId;
  String? order;
  String? orderBy;
  String? isFeatured;
  String? customIds;
  List<ModelDatum>? data;
  List<ListItem>? listItem;
  String? borderNone;

  Model({
    this.serviceTypes,
    required this.title,
    this.subTitle,
    this.bgImage,
    this.style,
    this.listSlider,
    this.titleForCar,
    this.titleForEvent,
    this.titleForSpace,
    this.titleForHotel,
    this.titleForTour,
    this.hideFormSearch,
    this.titleForFlight,
    this.singleFormSearch,
    this.bgImageUrl,
    this.desc,
    this.number,
    this.categoryId,
    this.locationId,
    this.order,
    this.orderBy,
    this.isFeatured,
    this.customIds,
    this.data,
    this.listItem,
    this.borderNone,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    serviceTypes: json["service_types"] == null ? [] : List<String>.from(json["service_types"]!.map((x) => x)),
    title: json["title"],
    subTitle: json["sub_title"],
    bgImage: json["bg_image"],
    style: json["style"],
    listSlider: json["list_slider"] == null ? [] : List<dynamic>.from(json["list_slider"]!.map((x) => x)),
    titleForCar: json["title_for_car"],
    titleForEvent: json["title_for_event"],
    titleForSpace: json["title_for_space"],
    titleForHotel: json["title_for_hotel"],
    titleForTour: json["title_for_tour"],
    hideFormSearch: json["hide_form_search"],
    titleForFlight: json["title_for_flight"],
    singleFormSearch: json["single_form_search"],
    bgImageUrl: json["bg_image_url"],
    desc: json["desc"],
    number: json["number"],
    categoryId: json["category_id"],
    locationId: json["location_id"],
    order: json["order"],
    orderBy: json["order_by"],
    isFeatured: json["is_featured"],
    customIds: json["custom_ids"],
    data: json["data"] == null ? [] : List<ModelDatum>.from(json["data"]!.map((x) => ModelDatum.fromJson(x))),
    listItem: json["list_item"] == null ? [] : List<ListItem>.from(json["list_item"]!.map((x) => ListItem.fromJson(x))),
    borderNone: json["border_none"],
  );

  Map<String, dynamic> toJson() => {
    "service_types": serviceTypes == null ? [] : List<dynamic>.from(serviceTypes!.map((x) => x)),
    "title": title,
    "sub_title": subTitle,
    "bg_image": bgImage,
    "style": style,
    "list_slider": listSlider == null ? [] : List<dynamic>.from(listSlider!.map((x) => x)),
    "title_for_car": titleForCar,
    "title_for_event": titleForEvent,
    "title_for_space": titleForSpace,
    "title_for_hotel": titleForHotel,
    "title_for_tour": titleForTour,
    "hide_form_search": hideFormSearch,
    "title_for_flight": titleForFlight,
    "single_form_search": singleFormSearch,
    "bg_image_url": bgImageUrl,
    "desc": desc,
    "number": number,
    "category_id": categoryId,
    "location_id": locationId,
    "order": order,
    "order_by": orderBy,
    "is_featured": isFeatured,
    "custom_ids": customIds,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "list_item": listItem == null ? [] : List<dynamic>.from(listItem!.map((x) => x.toJson())),
    "border_none": borderNone,
  };
}

class ModelDatum {
  int id;
  String? objectModel;
  String title;
  String? price;
  String? salePrice;
  String? discountPercent;
  String? image;
  String content;
  Location? location;
  int? isFeatured;
  String? duration;
  ReviewScore? reviewScore;
  String? slug;
  int? imageId;
  String? imageUrl;
  Category? category;
  String? createdAt;
  Author? author;
  String? url;

  ModelDatum({
    required this.id,
    this.objectModel,
    required this.title,
    this.price,
    this.salePrice,
    this.discountPercent,
    this.image,
    required this.content,
    this.location,
    this.isFeatured,
    this.duration,
    this.reviewScore,
    this.slug,
    this.imageId,
    this.imageUrl,
    this.category,
    this.createdAt,
    this.author,
    this.url,
  });

  factory ModelDatum.fromJson(Map<String, dynamic> json) => ModelDatum(
    id: json["id"],
    objectModel: json["object_model"],
    title: json["title"],
    price: json["price"],
    salePrice: json["sale_price"],
    discountPercent: json["discount_percent"],
    image: json["image"],
    content: json["content"],
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    isFeatured: json["is_featured"],
    duration: json["duration"],
    reviewScore: json["review_score"] == null ? null : ReviewScore.fromJson(json["review_score"]),
    slug: json["slug"],
    imageId: json["image_id"],
    imageUrl: json["image_url"],
    category: json["category"] == null ? null : Category.fromJson(json["category"]),
    createdAt: json["created_at"],
    author: json["author"] == null ? null : Author.fromJson(json["author"]),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "object_model": objectModel,
    "title": title,
    "price": price,
    "sale_price": salePrice,
    "discount_percent": discountPercent,
    "image": image,
    "content": content,
    "location": location?.toJson(),
    "is_featured": isFeatured,
    "duration": duration,
    "review_score": reviewScore?.toJson(),
    "slug": slug,
    "image_id": imageId,
    "image_url": imageUrl,
    "category": category?.toJson(),
    "created_at": createdAt,
    "author": author?.toJson(),
    "url": url,
  };
}

class Author {
  String displayName;
  String avatarUrl;

  Author({
    required this.displayName,
    required this.avatarUrl,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    displayName: json["display_name"],
    avatarUrl: json["avatar_url"],
  );

  Map<String, dynamic> toJson() => {
    "display_name": displayName,
    "avatar_url": avatarUrl,
  };
}

class Category {
  int id;
  String name;
  String slug;

  Category({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
  };
}

class Location {
  int id;
  String name;

  Location({
    required this.id,
    required this.name,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class ReviewScore {
  String scoreTotal;
  int totalReview;

  ReviewScore({
    required this.scoreTotal,
    required this.totalReview,
  });

  factory ReviewScore.fromJson(Map<String, dynamic> json) => ReviewScore(
    scoreTotal: json["score_total"],
    totalReview: json["total_review"],
  );

  Map<String, dynamic> toJson() => {
    "score_total": scoreTotal,
    "total_review": totalReview,
  };
}

class ListItem {
  bool active;
  String? name;
  String? desc;
  dynamic numberStar;
  int? avatar;
  String? position;
  String? avatarUrl;
  String? title;
  String? link;
  String? subTitle;
  String? icon;
  dynamic iconImage;
  dynamic order;
  bool? iconImageUrl;

  ListItem({
    required this.active,
    this.name,
    this.desc,
    this.numberStar,
    this.avatar,
    this.position,
    this.avatarUrl,
    this.title,
    this.link,
    this.subTitle,
    this.icon,
    this.iconImage,
    this.order,
    this.iconImageUrl,
  });

  factory ListItem.fromJson(Map<String, dynamic> json) => ListItem(
    active: json["_active"],
    name: json["name"],
    desc: json["desc"],
    numberStar: json["number_star"],
    avatar: json["avatar"],
    position: json["position"],
    avatarUrl: json["avatar_url"],
    title: json["title"],
    link: json["link"],
    subTitle: json["sub_title"],
    icon: json["icon"],
    iconImage: json["icon_image"],
    order: json["order"],
    iconImageUrl: json["icon_image_url"],
  );

  Map<String, dynamic> toJson() => {
    "_active": active,
    "name": name,
    "desc": desc,
    "number_star": numberStar,
    "avatar": avatar,
    "position": position,
    "avatar_url": avatarUrl,
    "title": title,
    "link": link,
    "sub_title": subTitle,
    "icon": icon,
    "icon_image": iconImage,
    "order": order,
    "icon_image_url": iconImageUrl,
  };
}
