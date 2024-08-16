import "dart:async";

import "package:dio/dio.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:practice_namito/core/app_manager.dart";

final String baseUrl = dotenv.env['API_BASE_URL'] ?? 'https://default.url';

class DioSettings {
  DioSettings() {
    dio.interceptors.add(DioLoggingInterceptor());
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        "Accept": "application/json",
      },
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<Response> post(String url, Object data) async {
    final String? token = await AppManager.instance.getToken();

    final Options options = token != null && token.isNotEmpty
        ? Options(headers: {
            'Authorization': 'Bearer $token',
          })
        : Options();
    final Response response = await dio.post(url, data: data, options: options);
    return response;
  }

  Future<Response> get(String url,
      {required Map<String, dynamic>? queryParameters}) async {
    final String? token = await AppManager.instance.getToken();

    final Options options = token != null && token.isNotEmpty
        ? Options(headers: {
            'Authorization': 'Bearer $token',
          })
        : Options();
    final Response response = await dio.get(
      url,
      queryParameters: queryParameters,
      options: options,
    );
    return response;
  }

  Future<Response> put(String url, Object data) async {
    final String? token = await AppManager.instance.getToken();

    final Options options = token != null && token.isNotEmpty
        ? Options(headers: {
            'Authorization': 'Bearer $token',
          })
        : Options();
    final Response response = await dio.put(url, data: data, options: options);
    return response;
  }

  Future<Response> patch(String url, Object data) async {
    final String? token = await AppManager.instance.getToken();

    final Options options = token != null && token.isNotEmpty
        ? Options(headers: {
            'Authorization': 'Bearer $token',
          })
        : Options();
    final Response response =
        await dio.patch(url, data: data, options: options);
    return response;
  }

  Future<Response> delete(String url, Object data) async {
    final String? token = await AppManager.instance.getToken();

    final Options options = token != null && token.isNotEmpty
        ? Options(headers: {
            'Authorization': 'Bearer $token',
          })
        : Options();
    final Response response =
        await dio.delete(url, data: data, options: options);
    return response;
  }
}

class AuthDioSettings {
  AuthDioSettings() {
    dio.interceptors.add(DioLoggingInterceptor());
  }
  Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://namito.kg/",
      contentType: "application/json",
      headers: {
        "Accept": "application/json",
      },
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );
}

class DioLoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('--- HTTP Request ---');
    print('URI: ${options.uri}');
    print('Method: ${options.method}');
    print('Query Parameters: ${options.queryParameters}');
    print('Headers: ${options.headers}');
    print('Request Data: ${options.data}');
    print('---------------------');

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('--- HTTP Response ---');
    print('Status Code: ${response.statusCode}');
    print('Response Data: ${response.data}');
    print('----------------------');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('--- HTTP Error ---');
    print('URI: ${err.requestOptions.uri}');
    print('Error: ${err.error}');
    print('Status Code: ${err.response?.statusCode}');
    print('Headers: ${err.response?.headers}');
    print('Response Data: ${err.response?.data}');
    print('---------------------');

    super.onError(err, handler);
  }
}
