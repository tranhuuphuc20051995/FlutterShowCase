import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'app/modules/splash/splash_screen.dart';
import 'app/routes/routes_setting_ext.dart';
import 'app_localizations/app_language_manager.dart';
import 'app_localizations/app_localizations.dart';

class MyApp extends StatelessWidget {
  final AppLanguageManager appLanguage;

  MyApp({this.appLanguage});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguageManager>(
      create: (BuildContext context) {
        return appLanguage;
      },
      child: Consumer<AppLanguageManager>(builder: (context, model, child) {
        return MaterialApp(
          home: SplashScreen(),
          //Route
          onGenerateRoute: (RouteSettings settings) => settings.generateRoute,
          onUnknownRoute: (RouteSettings setting) {
            return MaterialPageRoute(builder: (context) => NotFoundPage());
          },
          //Remove debug banner
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          showSemanticsDebugger: false,
          //Locale & Language
          locale: model.appLocal,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          supportedLocales: [
            Language.english,
            Language.vietnamese,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            //Check return locale default from setting of device.
            for (var supportedLocale in supportedLocales) {
              //If setting locale of device have in list locale support -> return this
              if (supportedLocale.languageCode == locale.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
            //Else return first locale from [list supportedLocales]
            return supportedLocales.first;
          },
        );
      }),
    );
  }
}

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Not Found Page"),
        ),
      ),
    );
  }
}
