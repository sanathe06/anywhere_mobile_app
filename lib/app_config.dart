class AppConfig {
  final String apiUrl;
  final String appName;

  AppConfig({required this.apiUrl, required this.appName});

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
              "http://api.duckduckgo.com/?q=simpsons+characters&format=json",
          appName: "Simpsons Character Viewer",
        );
        break;
      case AppFlavor.Wire:
        _instance = AppConfig(
          apiUrl:
              "http://api.duckduckgo.com/?q=the+wire+characters&format=json",
          appName: "The Wire Character Viewer",
        );
        break;
    }
  }
}

enum AppFlavor { Simpsons, Wire }
