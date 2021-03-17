// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rowdy/counter/counter.dart';
import 'package:rowdy/l10n/l10n.dart';
import 'package:rowdy/services/entity_repository.dart';
import 'package:rowdy/util/theme.dart';

import 'models/test.dart';
import 'screens/navigator_screen.dart';

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
      home: MultiBlocProvider(
        create: (context) => EntityListRepository<FFTest>(),
        child: const NavigatorBridge(),
      ),
    );
  }
}
