import 'package:json_annotation/json_annotation.dart';

part 'icon.g.dart';

@JsonSerializable()
class Icon {
  @JsonKey(name: 'Height')
  final String height;

  @JsonKey(name: 'URL')
  final String url;

  @JsonKey(name: 'Width')
  final String width;

  Icon({required this.height, required this.url, required this.width});

  factory Icon.fromJson(Map<String, dynamic> json) => _$IconFromJson(json);

  Map<String, dynamic> toJson() => _$IconToJson(this);
}
