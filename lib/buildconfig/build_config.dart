import '../core/enums/app_environment.dart';

class BuildConfig {
  static const String _kPrdBaseUrl = '';
  static const String _kStgBaseUrl = '';
  static const String _kDevBaseUrl = '';
  AppEnvironment _environment = AppEnvironment.dev;
  String _baseUrl = '';

  String get baseUrl => _baseUrl;
  int get receiveTimeout => 15000;
  int get connectionTimeout => 15000;

  BuildConfig(AppEnvironment environment) {
    _environment = environment;
    _baseUrl = _initBaseUrl();
  }

  String _initBaseUrl() {
    switch (_environment) {
      case AppEnvironment.prd:
        return _kPrdBaseUrl;
      case AppEnvironment.stg:
        return _kStgBaseUrl;
      case AppEnvironment.dev:
        return _kDevBaseUrl;
    }
  }
}
