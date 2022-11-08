// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/helpers/session_manager.dart';

class AppInterceptor extends Interceptor {
  final Dio _dio;

  AppInterceptor(this._dio);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await SessionManager.instance.accessToken ?? '';
    options.headers = {
      'Authorization': 'Bearer $token',
    };
    return handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final refreshToken = await SessionManager.instance.refreshToken ?? '';
      if (refreshToken.isEmpty) return handler.next(err);
      _dio.interceptors.requestLock.lock();
      _dio.interceptors.responseLock.lock();
      final options = err.requestOptions;
      // TODO(anhlt): execute call refresh-token API and save it then unlock and call previous request;
      _dio.interceptors.requestLock.unlock();
      _dio.interceptors.responseLock.unlock();
      final response = await _dio.request(
        options.path,
        data: options.data,
        queryParameters: options.queryParameters,
        options: Options(
          method: options.method,
          headers: options.headers,
          contentType: options.contentType,
          responseType: options.responseType,
          receiveTimeout: options.receiveTimeout,
          sendTimeout: options.sendTimeout,
        ),
      );
      return handler.resolve(response);
    }
    super.onError(err, handler);
  }
}
