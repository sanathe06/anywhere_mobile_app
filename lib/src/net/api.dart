import 'dart:convert';

import 'package:anywhere_mobile_app/app_config.dart';
import 'package:anywhere_mobile_app/src/models/charactors_data.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

class ApiClient {
  String apiUrl = AppConfig.getInstance().apiUrl;

  Future<Either<CharactersData, String>> getCharacters() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        return left(CharactersData.fromJson(jsonDecode(response.body)));
      } else {
        return right(response.reasonPhrase ?? 'Failed to load characters');
      }
    } catch (e) {
      return right('Error occurred during data fetching');
    }
  }
}
