// ignore_for_file: override_on_non_overriding_member

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../buildconfig/build_config.dart';
import '../response/api_response.dart';
import 'app_interceptor.dart';

class DioClient {
  final Dio _dio;
  final BuildConfig _buildConfig;
  DioClient(this._dio, this._buildConfig) {
    _dio
      ..options.baseUrl = _buildConfig.baseUrl
      ..options.connectTimeout = _buildConfig.connectionTimeout
      ..options.receiveTimeout = _buildConfig.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.addAll(<Interceptor>[
        AppInterceptor(_dio),
        if (kDebugMode)
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
          ),
      ]);
  }

  Future<ApiResponse<T?>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required T? Function(dynamic) mapper,
  }) {
    return _handleResponse(() {
      return _dio.get(
        _fullPathUrl(path),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    }, mapper);
  }

  Future<ApiResponse<T?>> post<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T? Function(dynamic) mapper,
  }) {
    return _handleResponse(() {
      return _dio.post(
        _fullPathUrl(path),
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    }, mapper);
  }

  Future<ApiResponse<T?>> put<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T? Function(dynamic) mapper,
  }) {
    return _handleResponse(() {
      return _dio.put(
        _fullPathUrl(path),
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    }, mapper);
  }

  Future<ApiResponse<T?>> delete<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T? Function(dynamic) mapper,
  }) {
    return _handleResponse(() {
      return _dio.delete(
        _fullPathUrl(path),
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    }, mapper);
  }

  Future<ApiResponse<T?>> _handleResponse<T>(
    Future<Response<Map<String, dynamic>>> Function() func,
    T? Function(dynamic)? mapper,
  ) async {
    try {
      final Response<Map<String, dynamic>> result = await func();
      final Map<String, dynamic> data = result.data ?? {};
      final apiResponse =
          ApiResponse<T?>.fromJson(data, (p0) => mapper?.call(data['data']));
      return apiResponse;
    } catch (e) {
      if (e is DioError) {
        return ApiResponse<T?>(message: e.message);
      }
      return ApiResponse<T?>(message: e.toString());
    }
  }

  @override
  String _fullPathUrl(String path) => '${_buildConfig.baseUrl}$path';
}
