// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      abstract: json['Abstract'] as String?,
      abstractSource: json['AbstractSource'] as String?,
      abstractText: json['AbstractText'] as String?,
      abstractURL: json['AbstractURL'] as String?,
      answer: json['Answer'] as String?,
      answerType: json['AnswerType'] as String?,
      definition: json['Definition'] as String?,
      definitionSource: json['DefinitionSource'] as String?,
      definitionURL: json['DefinitionURL'] as String?,
      entity: json['Entity'] as String?,
      heading: json['Heading'] as String?,
      image: json['Image'] as String?,
      imageHeight: json['ImageHeight'] as int?,
      imageIsLogo: json['ImageIsLogo'] as int?,
      imageWidth: json['ImageWidth'] as int?,
      infobox: json['Infobox'] as String?,
      redirect: json['Redirect'] as String?,
      relatedTopics: (json['RelatedTopics'] as List<dynamic>?)
          ?.map((e) => RelatedTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
      results: json['Results'] as List<dynamic>?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'Abstract': instance.abstract,
      'AbstractSource': instance.abstractSource,
      'AbstractText': instance.abstractText,
      'AbstractURL': instance.abstractURL,
      'Answer': instance.answer,
      'AnswerType': instance.answerType,
      'Definition': instance.definition,
      'DefinitionSource': instance.definitionSource,
      'DefinitionURL': instance.definitionURL,
      'Entity': instance.entity,
      'Heading': instance.heading,
      'Image': instance.image,
      'ImageHeight': instance.imageHeight,
      'ImageIsLogo': instance.imageIsLogo,
      'ImageWidth': instance.imageWidth,
      'Infobox': instance.infobox,
      'Redirect': instance.redirect,
      'RelatedTopics': instance.relatedTopics,
      'Results': instance.results,
      'Type': instance.type,
    };
