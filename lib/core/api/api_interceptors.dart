import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['lang'] = "en";
    options.headers['Content-Type'] = 'application/json';

    super.onRequest(options, handler);
  }
}
