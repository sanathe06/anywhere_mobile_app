import 'package:anywhere_mobile_app/app_config.dart';

import 'main.dart' as runner;

Future<void> main() async {
  AppConfig.initialize(AppFlavor.Simpsons);
  await runner.main();
}
