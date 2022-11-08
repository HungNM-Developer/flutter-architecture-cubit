import '../../di/injection.dart';
import '../../domain/local/keychain/secure_storage.dart';
import '../../domain/local/keychain/secure_storage_keys.dart';

/// You might save your cached data to use entire app here
class SessionManager {
  static final instance = SessionManager._();
  SessionManager._();

  SecureStorage secureStorage = getIt<SecureStorage>();

  Future<String?> get accessToken =>
      secureStorage.getValue(SecureStorageKeys.accessToken);

  Future<void> setAccessToken(String val) {
    return secureStorage.setValue(
      key: SecureStorageKeys.accessToken,
      value: val,
    );
  }

  Future<String?> get refreshToken =>
      secureStorage.getValue(SecureStorageKeys.refreshToken);

  Future<void> setRefreshToken(String val) {
    return secureStorage.setValue(
      key: SecureStorageKeys.refreshToken,
      value: val,
    );
  }

  Future<String?> get user => secureStorage.getValue(SecureStorageKeys.user);

  Future<void> setUser(String val) {
    return secureStorage.setValue(
      key: SecureStorageKeys.user,
      value: val,
    );
  }

  Future<String?> get email => secureStorage.getValue(SecureStorageKeys.email);

  Future<void> setEmail(String val) {
    return secureStorage.setValue(
      key: SecureStorageKeys.email,
      value: val,
    );
  }

  Future<void> clearAll() async {
    await setUser('');
    await setAccessToken('');
  }
}
