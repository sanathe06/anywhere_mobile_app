import 'package:anywhere_mobile_app/src/models/icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'related_topics.g.dart';

@JsonSerializable()
class RelatedTopic {
  @JsonKey(name: 'FirstURL')
  final String firstUrl;

  @JsonKey(name: 'Icon')
  final Icon icon;

  @JsonKey(name: 'Result')
  final String result;

  @JsonKey(name: 'Text')
  final String text;

  RelatedTopic({required this.firstUrl, required this.icon, required this.result, required this.text});

  factory RelatedTopic.fromJson(Map<String, dynamic> json) => _$RelatedTopicFromJson(json);
  Map<String, dynamic> toJson() => _$RelatedTopicToJson(this);
}