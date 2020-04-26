import 'package:flutter/material.dart';
import 'package:flutterapp/app_localizations/app_language_manager.dart';
import 'package:flutterapp/configs/app_config.dart';

import '../application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppLanguageManager appLanguage = AppLanguageManager();
  await appLanguage.fetchLocale();
  AppConfig(
    flavor: Flavor.DEV,
    color: Colors.red,
    name: "Dev",
    values: FlavorValues(
        baseUrl:
            "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_dev.json"),
  );
  return runApp(
    MyApp(
      appLanguage: appLanguage,
    ),
  );
}
