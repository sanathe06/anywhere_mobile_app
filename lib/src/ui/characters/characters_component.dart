import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:anywhere_mobile_app/src/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CharactersComponent extends StatelessWidget {
  final List<Character> characters;
  final Function(Character) onTap;
  final Function(String) onSearchTextChanged;
  final TextEditingController searchController;
  final Character? selectedCharacter;

  const CharactersComponent({
    super.key,
    required this.characters,
    required this.onTap,
    required this.onSearchTextChanged,
    required this.searchController,
    required this.selectedCharacter,
  });

  @override
  Widget build(BuildContext context) {
    var isTablet = ScreenUtils.isTablet(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            onChanged: onSearchTextChanged,
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context)!.search,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                      characters[index].name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    onTap: () => onTap(characters[index]),
                    tileColor: isTablet
                        ? selectedCharacter?.name == characters[index].name
                            ? Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.8)
                            : null
                        : null);
              },
            ),
          ),
        ),
      ],
    );
  }
}
