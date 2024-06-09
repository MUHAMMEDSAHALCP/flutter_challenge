import 'package:json_annotation/json_annotation.dart';
part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  final String? author;
  final String? title;
  final ArticleElem? elem;
  final ArticleImages? images;
  final String? category;
  final String? language;
  final String? country;
  final ArticleDate? date;

  ArticleModel({
    this.author,
    this.title,
    this.elem,
    this.images,
    this.category,
    this.language,
    this.country,
    this.date,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}

@JsonSerializable()
class ArticleElem {
  final String? description;
  final String? url;
  final String? source;

  ArticleElem({
    this.description,
    this.url,
    this.source,
  });

  factory ArticleElem.fromJson(Map<String, dynamic> json) =>
      _$ArticleElemFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleElemToJson(this);
}

@JsonSerializable()
class ArticleImages {
  final String? image;

  ArticleImages({
    this.image,
  });

  factory ArticleImages.fromJson(Map<String, dynamic> json) =>
      _$ArticleImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleImagesToJson(this);
}

@JsonSerializable()
class ArticleDate {
  final DateTime? published_at;

  ArticleDate({
    this.published_at,
  });

  factory ArticleDate.fromJson(Map<String, dynamic> json) =>
      _$ArticleDateFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleDateToJson(this);
}
