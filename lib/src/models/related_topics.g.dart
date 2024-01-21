// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedTopic _$RelatedTopicFromJson(Map<String, dynamic> json) => RelatedTopic(
      firstUrl: json['FirstURL'] as String,
      icon: Icon.fromJson(json['Icon'] as Map<String, dynamic>),
      result: json['Result'] as String,
      text: json['Text'] as String,
    );

Map<String, dynamic> _$RelatedTopicToJson(RelatedTopic instance) =>
    <String, dynamic>{
      'FirstURL': instance.firstUrl,
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };
