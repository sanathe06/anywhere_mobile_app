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
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) {
            return const DetailsScreen();
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
