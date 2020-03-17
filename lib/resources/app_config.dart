import 'package:flutter/material.dart';

enum Flavor { DEV, STG, PRODUCTION }

class FlavorValues {
  FlavorValues({@required this.baseUrl});

  final String baseUrl;
}

class AppConfig {
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;
  static AppConfig _instance;

  factory AppConfig({
    @required Flavor flavor,
    @required String name,
    Color color: Colors.blue,
    @required FlavorValues values,
  }) {
    _instance ??= AppConfig._internal(flavor, name, color, values);
    return _instance;
  }

  AppConfig._internal(this.flavor, this.name, this.color, this.values);

  static AppConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;

  static bool isDevelopment() => _instance.flavor == Flavor.DEV;

  static bool isQA() => _instance.flavor == Flavor.STG;
}
