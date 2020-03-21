import 'package:flutter/material.dart';
import 'package:flutterapp/resources/app_config.dart';

import '../application.dart';

void main() {
  AppConfig(
    flavor: Flavor.DEV,
    color: Colors.red,
    name: "Dev",
    values: FlavorValues(
        baseUrl:
            "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_dev.json"),
  );
  return runApp(MyApp());
}
