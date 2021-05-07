import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacker_news/data/topnews/news_summary.dart';
import 'package:hacker_news/data/topnews/top_news_data_source.dart';
import 'package:hacker_news/ui/features/topnews/top_news_event.dart';
import 'package:hacker_news/ui/features/topnews/top_news_state.dart';

class TopNewsBloc extends Bloc<TopNewsEvent, TopNewsState> {
  TopNewsBloc(TopNewsDataSource dataSource)
      : _dataSource = dataSource,
        super(TopNewsState());

  final TopNewsDataSource _dataSource;
  List<NewsSummary> news = List.empty(growable: true);

  @override
  Stream<TopNewsState> mapEventToState(TopNewsEvent event) async* {
    if (event is GetTopNewsIdsEvent) {
      yield* _getTopNews();
    } else if (event is GetTopNewsSummaryEvent) {
      yield* _getNewsSummary(event.id);
    }
  }

  Stream<TopNewsState> _getTopNews() async* {
    var response = await _dataSource.getTopNewsIds();
    if (response.data != null) {
      Stream.fromIterable(List.castFrom(response.data)).listen((event) {
        add(GetTopNewsSummaryEvent(event));
      });
    }
  }

  Stream<TopNewsSummaryState> _getNewsSummary(int id) async* {
    yield* _dataSource.getNewsSummary(id).asStream().map((event) {
      print(event);
      news.add(NewsSummary.fromJson(event.data));
      return TopNewsSummaryState(news);
    });
  }
}
