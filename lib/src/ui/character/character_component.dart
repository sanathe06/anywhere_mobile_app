import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:anywhere_mobile_app/src/utils/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CharacterComponent extends StatelessWidget {
  final Character? character;

  const CharacterComponent({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    var isTablet = ScreenUtils.isTablet(context);
    return SingleChildScrollView(
      child: Padding(
        padding: isTablet
            ? const EdgeInsets.all(8.0)
            : const EdgeInsets.only(
                top: 0.0, bottom: 8.0, left: 0.0, right: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            character?.image != null
                ? Image.network(
                    character!.image!,
                    width: MediaQuery.of(context).size.width, // full width
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/images/place_holder.png',
                    width: MediaQuery.of(context).size.width, // full width
                    fit: BoxFit.cover,
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  isTablet
                      ? Text(
                          character?.name ?? '',
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
      ),
    );
  }
}
