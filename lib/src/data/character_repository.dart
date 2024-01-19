import 'package:anywhere_mobile_app/src/models/charactors_data.dart';
import 'package:anywhere_mobile_app/src/net/api.dart';
import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:anywhere_mobile_app/src/ui/models/characters.dart';
import 'package:dartz/dartz.dart';

class CharacterRepository {
  final ApiClient _apiClient;

  CharacterRepository(this._apiClient);

  Characters convertToCharacters(CharactersData charactersData) {
    List<Character> characters =
        charactersData.relatedTopics.map((relatedTopic) {
      List<String> parts = relatedTopic.text.split(' - ');
      String name = parts[0];
      String description = parts.length > 1 ? parts[1] : '';
      String image = relatedTopic.icon.url.isNotEmpty
          ? 'https://duckduckgo.com${relatedTopic.icon.url}'
          : "";

      return Character(name: name, description: description, image: image);
    }).toList();

    return Characters(
        characterName: charactersData.heading, characters: characters);
  }

  Future<Either<Characters, String>> fetchCharacters(String apiUrl) async {
    final result = await _apiClient.getCharacters(apiUrl);
    return result.fold(
      (charactersData) => Left(convertToCharacters(charactersData)),
      (error) => Right(error),
    );
  }
}
