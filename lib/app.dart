import 'package:financial_app/core/theme.dart';
import 'package:financial_app/routes.dart';
import 'package:financial_app/screens/initial_screen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
      ],
      locale: const Locale('ru', 'RU'),
      theme: AppTheme.theme,
      navigatorKey: Routes.router.navigatorKey,
      onGenerateRoute: Routes.router.generator(),
      navigatorObservers: [],
      home: InitialScreen(),
    );
  }
}
