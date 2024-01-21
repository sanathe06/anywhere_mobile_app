// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charactors_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersData _$CharactersDataFromJson(Map<String, dynamic> json) =>
    CharactersData(
      abstractUrl: json['AbstractURL'] as String,
      heading: json['Heading'] as String,
      relatedTopics: (json['RelatedTopics'] as List<dynamic>)
          .map((e) => RelatedTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharactersDataToJson(CharactersData instance) =>
    <String, dynamic>{
      'AbstractURL': instance.abstractUrl,
      'Heading': instance.heading,
      'RelatedTopics': instance.relatedTopics,
    };
