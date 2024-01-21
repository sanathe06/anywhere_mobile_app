import 'dart:async';

import 'package:anywhere_mobile_app/src/data/character_repository.dart';
import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/foundation.dart';

import '../models/characters.dart';

class CharactersViewModel extends ChangeNotifier {
  final CharacterRepository _characterRepository;
  Character? selectedCharacter;
  late Characters charactersData;
  bool isLoading = true;

  CharactersViewModel(this._characterRepository) {
    fetchCharacters();
  }

  void setSelectedCharacter(Character character) {
    selectedCharacter = character;
    notifyListeners();
  }

  Future<void> fetchCharacters() async {
    isLoading = true;
    notifyListeners();
    final result = await _characterRepository.fetchCharacters(
        'http://api.duckduckgo.com/?q=simpsons+characters&format=json');

    result.fold(
      (charactersData) {
        this.charactersData = charactersData;
        isLoading = false;
        notifyListeners();
      },
      (failure) {
        // Handle the error here
        isLoading = false;
        print('Error occurred: $failure');
      },
    );
  }
}
