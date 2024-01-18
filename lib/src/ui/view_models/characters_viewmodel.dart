import 'package:anywhere_mobile_app/src/models/character_model.dart';
import 'package:flutter/foundation.dart'; // Import the file where you defined the fetchCharacters function

class CharactersViewModel extends ChangeNotifier {
  List<Character>? characters;
  bool isLoading = true;

  CharactersViewModel() {
    fetchCharacters().then((newCharacters) {
      characters = newCharacters;
      isLoading = false;
      notifyListeners();
    });
  }
}

Future<List<Character>> fetchCharacters() async {
  // Simulate a network delay
  await Future.delayed(Duration(seconds: 2));

  return List<Character>.generate(
      10,
      (index) => Character(
            name: 'Character $index',
            url: 'http://example.com/character_$index',
            text: 'This is a description for Character $index',
          ));
}
