import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:anywhere_mobile_app/src/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailsComponent extends StatelessWidget {
  final Character? character;

  const  DetailsComponent({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    var isTablet = ScreenUtils.isTablet(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          character?.image != null
              ? Image.network(
                  character!.image!,
                  width: MediaQuery.of(context).size.width, // full width
                  fit: BoxFit.cover,
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                isTablet
                    ? Text(
                        character?.name ??
                            AppLocalizations.of(context)!.noCharacterSelected,
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    : Container(),
                const SizedBox(height: 16),
                Text(character?.description ?? '',
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
