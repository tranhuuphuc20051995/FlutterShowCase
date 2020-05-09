import 'package:flutter/material.dart';
import 'package:flutterapp/app/routes/route_const.dart';
import 'package:flutterapp/app_localizations/app_language_manager.dart';
import 'package:flutterapp/app_localizations/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguageManager>(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, RouteName.HOME);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FaIcon(FontAwesomeIcons.addressBook),
                FaIcon(FontAwesomeIcons.amazonPay),
                Text(
                  AppLocalizations.of(context).translate('hello'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        appLanguage.changeLanguage(Language.english);
                      },
                      child: Text('English'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        appLanguage.changeLanguage(Language.vietnamese);
                      },
                      child: Text('Vietnamese'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
