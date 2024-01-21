import 'package:anywhere_mobile_app/src/ui/components/details_component.dart';
import 'package:anywhere_mobile_app/src/ui/models/character.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Character character;

  const DetailsScreen({super.key, required this.character});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Details'),
      ),
      body: DetailsComponent(character: widget.character),
    );
  }
}
