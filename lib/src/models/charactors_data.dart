import 'package:anywhere_mobile_app/src/models/related_topics.dart';
import 'package:json_annotation/json_annotation.dart';

part 'charactors_data.g.dart';

@JsonSerializable()
class CharactersData {
  @JsonKey(name: 'AbstractURL')
  final String abstractUrl;

  @JsonKey(name: 'Heading')
  final String heading;

  @JsonKey(name: 'RelatedTopics')
  final List<RelatedTopic> relatedTopics;

  CharactersData({required this.abstractUrl, required this.heading, required this.relatedTopics});

  factory CharactersData.fromJson(Map<String, dynamic> json) => _$CharactersDataFromJson(json);
  Map<String, dynamic> toJson() => _$CharactersDataToJson(this);
}