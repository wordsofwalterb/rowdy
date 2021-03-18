import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:rowdy/l10n/l10n.dart';

import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';

import 'package:rowdy/util/theme.dart';

import 'screens/navigator_bridge.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rowdy',
      theme: ffTheme(FFThemes.dark),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (_) => UserRepository(FirebaseService())),
        ],
        child: const NavigatorBridge(),
      ),
    );
  }
}
