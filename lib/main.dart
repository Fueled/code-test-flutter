import 'dart:async';

import 'package:flutter/material.dart';
import 'package:code_test_flutter/core/navigation/app_router.dart';
import 'package:code_test_flutter/core/navigation/app_router_widget.dart';
import 'package:code_test_flutter/gen/colors.gen.dart';
import 'package:code_test_flutter/inject/app_injector.dart';
import 'package:code_test_flutter/l10n/app_localizations.g.dart';

import 'gen/fonts.gen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(EntryPoint());
}

class EntryPoint extends StatelessWidget {
  final AppRouter router = getIt();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppRouterWidget(
      appRouter: router,
      child: MainApp(config: router.delegate),
    );
  }
}

class MainApp extends StatelessWidget {
  final RouterConfig<Object>? config;

  const MainApp({super.key, this.config});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: config,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        fontFamily: FontFamily.cabin,
        scaffoldBackgroundColor: ColorName.surface,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorName.primary,
          onPrimary: ColorName.colorOnPrimary,
          primaryContainer: ColorName.primaryContainer,
          onSecondary: ColorName.colorOnSecondary,
          surface: ColorName.surface,
          onSurface: ColorName.colorOnSurface,
          secondary: ColorName.secondary,
        ),
      ),
    );
  }
}
