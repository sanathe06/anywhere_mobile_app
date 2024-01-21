import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/material.dart';

class DetailsComponent extends StatelessWidget {
  final Character? character;

  const DetailsComponent({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    print('character!.image! ${character!.image}');
    return Center(
      child: Column(
        children: [
          Text(character?.name ?? 'No character selected'),
          Text(character?.description ?? ''),
          character?.image != null ? Image.network(character!.image!) : Container(),
        ],
      ),
    );
  }
}
