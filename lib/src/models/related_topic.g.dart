// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedTopic _$RelatedTopicFromJson(Map<String, dynamic> json) => RelatedTopic(
      firstURL: json['FirstURL'] as String?,
      icon: json['Icon'] == null
          ? null
          : Icon.fromJson(json['Icon'] as Map<String, dynamic>),
      result: json['Result'] as String?,
      text: json['Text'] as String?,
    );

Map<String, dynamic> _$RelatedTopicToJson(RelatedTopic instance) =>
    <String, dynamic>{
      'FirstURL': instance.firstURL,
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };
