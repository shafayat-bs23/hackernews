import 'package:dio/dio.dart';

class NetworkFactory {
  static final NetworkFactory _networkFactory = NetworkFactory._internal();
  BaseOptions _options =
      BaseOptions(baseUrl: "https://hacker-news.firebaseio.com/v0/");
  Dio _dio = Dio();

  factory NetworkFactory() {
    return _networkFactory;
  }

  Dio getDio() {
    _dio.options = _options;
    return _dio;
  }

  NetworkFactory._internal();
}
