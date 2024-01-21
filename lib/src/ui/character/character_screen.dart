import 'package:anywhere_mobile_app/src/ui/character/character_component.dart';
import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/material.dart';

class CharacterScreen extends StatefulWidget {
  final Character character;

  const CharacterScreen({super.key, required this.character});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character.name),
      ),
      body: CharacterComponent(character: widget.character),
    );
  }
}
