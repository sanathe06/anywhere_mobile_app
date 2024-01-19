import 'package:anywhere_mobile_app/src/ui/components/list_component.dart';
import 'package:anywhere_mobile_app/src/ui/view_models/characters_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CharactersViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('The Wire Characters'),
        ),
        body: Consumer<CharactersViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.isLoading) {
              return const CircularProgressIndicator();
            } else if (viewModel.characters != null) {
              return ListComponent(
                characters: viewModel.characters!,
                onTap: (character) => {
                  Navigator.pushNamed(context, '/details', arguments: character)
                },
              );
            } else {
              return const Text('Failed to load characters');
            }
          },
        ),
      ),
    );
  }
}
