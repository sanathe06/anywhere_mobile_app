import 'package:anywhere_mobile_app/src/models/charactors_data.dart';
import 'package:anywhere_mobile_app/src/models/related_topics.dart';
import 'package:anywhere_mobile_app/src/net/api.dart';
import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:anywhere_mobile_app/src/ui/models/characters.dart';
import 'package:anywhere_mobile_app/src/utils/image.dart';
import 'package:dartz/dartz.dart';

class CharacterRepository {
  final ApiClient _apiClient;

  CharacterRepository(this._apiClient);

  Drama convertToCharacters(CharactersData charactersData) {
    List<Character> characters =
        charactersData.relatedTopics.map((relatedTopic) {
      List<String> parts = relatedTopic.text.split(' - ');
      String name = parts[0];
      String description = parts.length > 1 ? parts[1] : '';
      String? image = getImageUrl(relatedTopic);
      return Character(name: name, description: description, image: image);
    }).toList();

    return Drama(
        name: charactersData.heading, characters: characters);
  }

  String? getImageUrl(RelatedTopic relatedTopic) {
    var imageUrl = 'https://duckduckgo.com${relatedTopic.icon.url}';
    return relatedTopic.icon.url.isNotEmpty
        ? ImageUtils.isValidImageUrl(imageUrl)
            ? imageUrl
            : null
        : null;
  }

  Future<Either<Drama, String>> fetchCharacters() async {
    final result = await _apiClient.getCharacters();
    return result.fold(
      (charactersData) => Left(convertToCharacters(charactersData)),
      (error) => Right(error),
    );
  }
}
