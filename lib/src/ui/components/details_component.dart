import 'package:anywhere_mobile_app/src/models/character_model.dart';
import 'package:flutter/material.dart';

class DetailsComponent extends StatelessWidget {
  final Character? character;

  const DetailsComponent({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(character?.name ?? 'No character selected'),
          Text(character?.text ?? ''),
        ],
      ),
    );
  }
}
