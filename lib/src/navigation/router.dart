import 'package:anywhere_mobile_app/src/ui/characters/characters_screen.dart';
import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/material.dart';

import '../ui/character/character_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            return const CharactersScreen();
          },
        );
      case '/details':
        final character = settings.arguments as Character;
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            return CharacterScreen(character: character);
          },
        );
      default:
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            return const CharactersScreen();
          },
        );
    }
  }
}
