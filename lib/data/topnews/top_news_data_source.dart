import 'package:dio/dio.dart';
import 'package:hacker_news/data/api_service.dart';

class TopNewsDataSource {
  Dio _dio = NetworkFactory().getDio();

  Future<Response> getTopNewsIds() {
    return _dio.get("topstories.json?print=pretty");
  }

  Future<Response> getNewsSummary(int id) {
    return _dio.get("item/$id.json?print=pretty");
  }
}
