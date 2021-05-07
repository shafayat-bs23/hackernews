/// by : "dhouston"
/// descendants : 71
/// id : 8863
/// kids : [8952,9224,8917,8884,8887,8943,8869,8958,9005,9671,8940,9067,8908,9055,8865,8881,8872,8873,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8878,8870,8980,8934,8876]
/// score : 111
/// time : 1175714200
/// title : "My YC app: Dropbox - Throw away your USB drive"
/// type : "story"
/// url : "http://www.getdropbox.com/u/2/screencast.html"

class NewsSummary {
  String? _by;
  int? _descendants;
  int? _id;
  List<int>? _kids;
  int? _score;
  int? _time;
  String? _title;
  String? _type;
  String? _url;

  String? get by => _by;
  int? get descendants => _descendants;
  int? get id => _id;
  List<int>? get kids => _kids;
  int? get score => _score;
  int? get time => _time;
  String? get title => _title;
  String? get type => _type;
  String? get url => _url;

  NewsSummary(
      {String? by,
      int? descendants,
      int? id,
      List<int>? kids,
      int? score,
      int? time,
      String? title,
      String? type,
      String? url}) {
    _by = by;
    _descendants = descendants;
    _id = id;
    _kids = kids;
    _score = score;
    _time = time;
    _title = title;
    _type = type;
    _url = url;
  }

  NewsSummary.fromJson(dynamic json) {
    _by = json["by"];
    _descendants = json["descendants"];
    _id = json["id"];
    _kids = json["kids"] != null ? json["kids"].cast<int>() : [];
    _score = json["score"];
    _time = json["time"];
    _title = json["title"];
    _type = json["type"];
    _url = json["url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["by"] = _by;
    map["descendants"] = _descendants;
    map["id"] = _id;
    map["kids"] = _kids;
    map["score"] = _score;
    map["time"] = _time;
    map["title"] = _title;
    map["type"] = _type;
    map["url"] = _url;
    return map;
  }
}
