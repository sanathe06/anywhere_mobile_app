import 'package:anywhere_mobile_app/src/models/character_model.dart';
import 'package:flutter/foundation.dart';

class CharactersViewModel extends ChangeNotifier {
  List<Character>? characters;
  Character? selectedCharacter;
  bool isLoading = true;

  CharactersViewModel() {
    fetchCharacters().then((newCharacters) {
      characters = newCharacters;
      isLoading = false;
      isLoading = false;
      if (characters != null && characters!.isNotEmpty) {
        //setSelectedCharacter(characters!.first);
        selectedCharacter = characters!.first;
      }
      notifyListeners();
    });
  }

  void setSelectedCharacter(Character character) {
    selectedCharacter = character;
    notifyListeners();
  }
}

Future<List<Character>> fetchCharacters() async {
  await Future.delayed(Duration(seconds: 2));

  return List<Character>.generate(
      40,
      (index) => Character(
            name: 'Character $index',
            url: 'http://example.com/character_$index',
            text: 'This is a description for Character $index',
          ));
}
