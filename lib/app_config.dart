class AppConfig {
  final String apiUrl;

  AppConfig({required this.apiUrl});

  static AppConfig? _instance;

  static AppConfig getInstance() {
    if (_instance == null) {
      throw Exception("AppConfig not initialized");
    }
    return _instance!;
  }

  static void initialize(AppFlavor flavor) {
    switch (flavor) {
      case AppFlavor.Simpsons:
        _instance = AppConfig(
            apiUrl:
                "http://api.duckduckgo.com/?q=simpsons+characters&format=json");
        break;
      case AppFlavor.Wire:
        _instance = AppConfig(
            apiUrl:
                "http://api.duckduckgo.com/?q=the+wire+characters&format=json");
        break;
    }
  }
}

enum AppFlavor { Simpsons, Wire }
