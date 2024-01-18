class Character {
  final String name;
  final String url;
  final String text;

  Character({required this.name, required this.url, required this.text});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['FirstURL'],
      url: json['Result'],
      text: json['Text'],
    );
  }
}
