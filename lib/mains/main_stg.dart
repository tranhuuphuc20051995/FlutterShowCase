import 'package:flutter/material.dart';
import 'package:flutterapp/resources/app_config.dart';

import '../application.dart';

void main() {
  AppConfig(
    flavor: Flavor.STG,
    name: "STG",
    color: Colors.yellow,
    values: FlavorValues(
        baseUrl:
            "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_qa.json"),
  );
  return runApp(MyApp());
}
