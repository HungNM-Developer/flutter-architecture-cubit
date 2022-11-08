import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/language_cache_helper.dart';
import '../../domain/local/keychain/shared_prefs.dart';

part 'locale_state.dart';

class LocaleBloc extends Cubit<LocaleState> {
  late final SharedPrefs _sharedPrefs;
  // Passing an initial value (state) with a default 'Locale' to the super class.
  LocaleBloc(SharedPrefs sharedPrefs) : super(LocaleInitial()) {
    _sharedPrefs = sharedPrefs;
  }

  Future<void> getSavedLanguage({required BuildContext context}) async {
    final String cachedLanguageCode =
        await LanguageCacheHelper().getCacheLanguageCode(_sharedPrefs);

    emit(
      ChangeLocaleSuccessState(
        locale: Locale(cachedLanguageCode),
      ),
    );
  }

  Future<void> changeLanguage({
    required String languageCode,
    required BuildContext context,
  }) async {
    await context.setLocale(Locale(languageCode));
    await LanguageCacheHelper().cacheLanguageCode(languageCode, _sharedPrefs);

    emit(
      ChangeLocaleSuccessState(
        locale: Locale(languageCode),
      ),
    );
  }
}
