import 'dart:async';

import 'package:anywhere_mobile_app/src/data/character_repository.dart';
import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/widgets.dart';

import '../models/characters.dart';

class CharactersViewModel extends ChangeNotifier {
  final CharacterRepository _characterRepository;
  Character? selectedCharacter;
  late Drama charactersData;
  bool isLoading = true;
  String searchText = '';
  List<Character> characters = [];
  final TextEditingController searchController = TextEditingController();

  String? error;
  bool errorOccurred = false;

  CharactersViewModel(this._characterRepository) {
    fetchCharacters();
  }

  void setSelectedCharacter(Character character) {
    selectedCharacter = character;
    notifyListeners();
  }

  void onSearchTextChanged(String text) {
    searchText = text;
    filterCharacters();
  }

  void filterCharacters() {
    if (searchText.isEmpty) {
      characters = charactersData.characters;
    } else {
      characters = charactersData.characters.where((character) {
        return character.name
                .toLowerCase()
                .contains(searchText.toLowerCase()) ||
            character.description
                .toLowerCase()
                .contains(searchText.toLowerCase());
      }).toList();
    }

    notifyListeners();
  }

  Future<void> fetchCharacters() async {
    isLoading = true;
    notifyListeners();
    final result = await _characterRepository.fetchCharacters();

    result.fold(
      (charactersData) {
        this.charactersData = charactersData;
        characters = List.from(charactersData.characters);
        if (characters.isNotEmpty) {
          setSelectedCharacter(characters
              .first); // Set the first character as the selected character
        }
        isLoading = false;
        error = null;
        errorOccurred = false;
        notifyListeners();
      },
      (failure) {
        // Handle the error here
        isLoading = false;
        error = 'Error occurred: $failure';
        errorOccurred = true;
      },
    );
  }

  void resetError() {
    error = null;
    errorOccurred = false;
    notifyListeners();
  }
}
