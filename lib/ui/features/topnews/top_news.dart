import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacker_news/data/topnews/top_news_data_source.dart';
import 'package:hacker_news/ui/features/topnews/top_news_bloc.dart';
import 'package:hacker_news/ui/features/topnews/top_news_event.dart';
import 'package:hacker_news/ui/features/topnews/top_news_state.dart';

class TopNewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TopNewsBloc(TopNewsDataSource()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("HackerNews"),
            ),
            body: NewsList(),
          );
        },
      ),
    );
  }
}

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TopNewsBloc>(context).add(GetTopNewsIdsEvent());
    return BlocConsumer<TopNewsBloc, TopNewsState>(
        builder: (context, state) {
          if (state is TopNewsSummaryState) {
            return Container(
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return Text(state.newsList[position].title ?? "");
                },
                itemCount: state.newsList.length,
              ),
            );
          } else {
            return Text("");
          }
        },
        listener: (context, state) {});
  }
}
