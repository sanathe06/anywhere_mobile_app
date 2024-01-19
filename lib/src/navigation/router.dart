import 'package:anywhere_mobile_app/src/models/character_model.dart';
import 'package:anywhere_mobile_app/src/ui/list_screen.dart';
import 'package:flutter/material.dart';

import '../ui/details_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            return const ListScreen();
          },
        );
      case '/details':
        final character = settings.arguments as Character;
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            return DetailsScreen(character: character);
          },
        );
      default:
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            return const ListScreen();
          },
        );
    }
  }
}
