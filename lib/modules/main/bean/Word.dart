class Word {
  String? chineseExplain;
  int? classCount;
  String? createTime;
  int? id;
  String? langString;
  int? langType;
  int? lemmaId;
  String? phonetic;
  String? pos;
  String? shortChineseExplain;
  int? status;
  String? statusString;
  int? type;
  String? typeString;
  String? wordsStr;

  Word(
      {this.chineseExplain,
      this.classCount,
      this.createTime,
      this.id,
      this.langString,
      this.langType,
      this.lemmaId,
      this.phonetic,
      this.pos,
      this.shortChineseExplain,
      this.status,
      this.statusString,
      this.type,
      this.typeString,
      this.wordsStr});

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      chineseExplain: json['chineseExplain'],
      classCount: json['classCount'],
      createTime: json['createTime'],
      id: json['id'],
      langString: json['langString'],
      langType: json['langType'],
      lemmaId: json['lemmaId'],
      phonetic: json['phonetic'],
      pos: json['pos'],
      shortChineseExplain: json['shortChineseExplain'],
      status: json['status'],
      statusString: json['statusString'],
      type: json['type'],
      typeString: json['typeString'],
      wordsStr: json['wordsStr'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['chineseExplain'] = chineseExplain;
    data['classCount'] = classCount;
    data['createTime'] = createTime;
    data['id'] = id;
    data['langString'] = langString;
    data['langType'] = langType;
    data['lemmaId'] = lemmaId;
    data['phonetic'] = phonetic;
    data['pos'] = pos;
    data['shortChineseExplain'] = shortChineseExplain;
    data['status'] = status;
    data['statusString'] = statusString;
    data['type'] = type;
    data['typeString'] = typeString;
    data['wordsStr'] = wordsStr;
    return data;
  }
}
