import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../buildconfig/build_config.dart';
import '../core/app_router.dart';
import '../core/enums/app_environment.dart';
import '../core/helpers/dialog_helper.dart';
import '../core/helpers/event_bus.dart';
import '../cubit/easy_locale/locale_bloc.dart';
import '../cubit/session/session_bloc.dart';
import '../domain/local/keychain/secure_storage.dart';
import '../domain/local/keychain/shared_prefs.dart';
import '../domain/network/service/dio_client.dart';

final GetIt getIt = GetIt.instance;
Future<void> registerDependencies(AppEnvironment environment) async {
  // Add inject dependency
  getIt.registerSingleton(BuildConfig(environment));
  getIt.registerSingletonAsync(() => SharedPrefs().init());
  getIt.registerSingleton<SecureStorage>(SecureStorage());
  getIt.registerSingleton<EventBus>(EventBus());
  getIt.registerSingleton(() => AppRouter());
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(
    getIt<Dio>(),
    getIt<BuildConfig>(),
  ));
  getIt.registerLazySingleton<DialogHelper>(() => DialogHelperImpl());
  _registerRepositories();
  _registerBlocs();
}

void _registerRepositories() {}

void _registerBlocs() {
  getIt.registerFactory(() => SessionBloc());
  getIt.registerFactory(() => LocaleBloc(getIt<SharedPrefs>()));
}
