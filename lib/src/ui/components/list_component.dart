import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {
  final List<Character> characters;
  final Function(Character) onTap;
  final Function(String) onSearchTextChanged;
  final TextEditingController searchController;
  const ListComponent({
    super.key,
    required this.characters,
    required this.onTap,
    required this.onSearchTextChanged,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            onChanged: onSearchTextChanged,
            decoration: InputDecoration(
              labelText: 'Search',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  searchController.clear();
                  onSearchTextChanged('');
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(characters[index].name),
                onTap: () => onTap(characters[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
