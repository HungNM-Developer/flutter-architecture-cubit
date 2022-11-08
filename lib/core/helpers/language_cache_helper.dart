import '../../domain/local/keychain/shared_prefs.dart';

class LanguageCacheHelper {
  Future<void> cacheLanguageCode(
      String languageCode, SharedPrefs sharedPreferences) async {
    sharedPreferences.saveData<String>('locale', languageCode);
  }

  Future<String> getCacheLanguageCode(SharedPrefs sharedPreferences) async {
    final cachedLanguageCode = sharedPreferences.getData<String>('locale');
    if (cachedLanguageCode != null) {
      return cachedLanguageCode;
    } else {
      return 'vi';
    }
  }
}
