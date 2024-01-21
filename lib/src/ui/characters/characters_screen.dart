import 'package:anywhere_mobile_app/app_config.dart';
import 'package:anywhere_mobile_app/src/data/character_repository.dart';
import 'package:anywhere_mobile_app/src/net/api.dart';
import 'package:anywhere_mobile_app/src/ui/character/character_component.dart';
import 'package:anywhere_mobile_app/src/ui/characters/characters_component.dart';
import 'package:anywhere_mobile_app/src/ui/characters/characters_viewmodel.dart';
import 'package:anywhere_mobile_app/src/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTablet = ScreenUtils.isTablet(context);
    return ChangeNotifierProvider(
      create: (context) =>
          CharactersViewModel(CharacterRepository(ApiClient())),
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          AppConfig.getInstance().appName,
        )),
        body: Consumer<CharactersViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.errorOccurred) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                showErrorDialog(context, viewModel);
              });
            }
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (isTablet) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CharactersComponent(
                      characters: viewModel.characters,
                      onTap: (character) => {
                        // Do not navigate to details screen, instead update the selected character in the view model
                        viewModel.setSelectedCharacter(character)
                      },
                      onSearchTextChanged: viewModel.onSearchTextChanged,
                      searchController: viewModel.searchController,
                      selectedCharacter: viewModel.selectedCharacter,
                    ),
                  ),
                  Expanded(
                    child: CharacterComponent(
                      character: viewModel.selectedCharacter,
                    ),
                  ),
                ],
              );
            } else {
              return CharactersComponent(
                characters: viewModel.characters,
                onTap: (character) => {
                  Navigator.pushNamed(context, '/details', arguments: character)
                },
                onSearchTextChanged: viewModel.onSearchTextChanged,
                searchController: viewModel.searchController,
                selectedCharacter: viewModel.selectedCharacter,
              );
            }
          },
        ),
      ),
    );
  }

  void showErrorDialog(BuildContext context, CharactersViewModel viewModel) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.error),
        content: Text(viewModel.error!),
        actions: [
          TextButton(
            child: Text(AppLocalizations.of(context)!.ok),
            onPressed: () {
              Navigator.of(context).pop();
              viewModel.resetError();
            },
          ),
        ],
      ),
    );
  }
}
