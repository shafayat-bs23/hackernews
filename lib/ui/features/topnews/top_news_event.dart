class TopNewsEvent {}

class GetTopNewsIdsEvent extends TopNewsEvent {}

class GetTopNewsSummaryEvent extends TopNewsEvent {
  GetTopNewsSummaryEvent(this.id);

  int id;
}
