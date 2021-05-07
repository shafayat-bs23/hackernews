import 'package:hacker_news/data/topnews/news_summary.dart';

class TopNewsState {}

class TopNewsSummaryState extends TopNewsState {
  TopNewsSummaryState(List<NewsSummary> newsList) : newsList = newsList;

  List<NewsSummary> newsList;
}
