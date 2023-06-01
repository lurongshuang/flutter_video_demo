
class HighlightWord {
  List<String>? subWords;
  String? word;

  HighlightWord({this.subWords, this.word});

  factory HighlightWord.fromJson(Map<String, dynamic> json) {
    return HighlightWord(
      subWords: json['subWords'] != null
          ? List<String>.from(json['subWords'])
          : null,
      word: json['word'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['word'] = word;
    if (subWords != null) {
      data['subWords'] = subWords;
    }
    return data;
  }
}
