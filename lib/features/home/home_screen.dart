import 'package:flutter/material.dart';
import 'package:flutter_localization_project/features/home/localization_provider.dart';
import 'package:provider/provider.dart';

import '../../l10n/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(AppLocalizations.of(context).home),
      ),
      body: Consumer<LocalizationsNotifier>(
        builder: (context, notifier, child) {
          return Center(
            child: Row(
              children: [
                Switch(
                  value: notifier.appLocale == AppLocale.en,
                  onChanged: (v) {
                    if (v) {
                      notifier.setLocale(AppLocale.en);
                    } else {
                      notifier.setLocale(AppLocale.ar);
                    }
                  },
                ),
                const SizedBox(width: 16),
                const Text(
                  'Switch Language',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
