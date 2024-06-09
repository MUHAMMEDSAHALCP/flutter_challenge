// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      author: json['author'] as String?,
      title: json['title'] as String?,
      elem: json['elem'] == null
          ? null
          : ArticleElem.fromJson(json['elem'] as Map<String, dynamic>),
      images: json['images'] == null
          ? null
          : ArticleImages.fromJson(json['images'] as Map<String, dynamic>),
      category: json['category'] as String?,
      language: json['language'] as String?,
      country: json['country'] as String?,
      date: json['date'] == null
          ? null
          : ArticleDate.fromJson(json['date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'elem': instance.elem,
      'images': instance.images,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
      'date': instance.date,
    };

ArticleElem _$ArticleElemFromJson(Map<String, dynamic> json) => ArticleElem(
      description: json['description'] as String?,
      url: json['url'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$ArticleElemToJson(ArticleElem instance) =>
    <String, dynamic>{
      'description': instance.description,
      'url': instance.url,
      'source': instance.source,
    };

ArticleImages _$ArticleImagesFromJson(Map<String, dynamic> json) =>
    ArticleImages(
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ArticleImagesToJson(ArticleImages instance) =>
    <String, dynamic>{
      'image': instance.image,
    };

ArticleDate _$ArticleDateFromJson(Map<String, dynamic> json) => ArticleDate(
      published_at: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
    );

Map<String, dynamic> _$ArticleDateToJson(ArticleDate instance) =>
    <String, dynamic>{
      'published_at': instance.published_at?.toIso8601String(),
    };
