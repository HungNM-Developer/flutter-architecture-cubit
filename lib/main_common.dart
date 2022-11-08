import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_setup/cubit/easy_locale/locale_bloc.dart';

import 'application.dart';
import 'core/enums/app_environment.dart';
import 'core/utils/local_notice_service.dart';
import 'core/utils/localization_util.dart';
import 'cubit/theme/theme_bloc.dart';
import 'di/injection.dart';

void mainCommon(AppEnvironment environment) {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await registerDependencies(environment);
      await NotificationService.init();
      await EasyLocalization.ensureInitialized();
      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  getIt<LocaleBloc>()..getSavedLanguage(context: context),
            ),
            BlocProvider(
              create: (context) => ThemeBloc(),
            ),
          ],
          child: BlocBuilder<LocaleBloc, LocaleState>(
            builder: (context, state) {
              return EasyLocalization(
                supportedLocales: LocalizationUtil.supportedLocales,
                path: 'assets/translations',
                fallbackLocale: LocalizationUtil.defaultLocale,
                child: const Application(),
              );
            },
          ),
        ),
      );
    },
    (_, __) {
      // Add crashlytics if needed
    },
  );
}
