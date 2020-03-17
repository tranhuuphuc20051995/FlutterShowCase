import 'package:flutter/material.dart';
import 'package:flutterapp/resources/app_config.dart';

import '../application.dart';

void main() {
  var configuredApp = AppConfig(
    appTitle: "Flutter Flavors STG",
    buildFlavor: "Staging",
    child: MyApp(),
  );
  return runApp(configuredApp);
}
