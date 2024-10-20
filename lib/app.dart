import 'package:flutter/material.dart';
import 'package:flutter_localization_project/l10n/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'features/home/home_screen.dart';
import 'features/home/localization_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocalizationsNotifier(),
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Flutter Demo',
          supportedLocales: AppLocalizations.delegate.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: switch (context.watch<LocalizationsNotifier>().appLocale) {
            AppLocale.en => const Locale('en'),
            AppLocale.ar => const Locale('ar'),
          },
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
