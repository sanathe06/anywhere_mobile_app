import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {
  final List<Character> characters;
  final Function(Character) onTap;

  const ListComponent({Key? key, required this.characters,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(characters[index].name),
          onTap: () => onTap(characters[index]),
        );
      },
    );
  }
}
