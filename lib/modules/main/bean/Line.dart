class Line {
    String? createTime;
    int? endMilli;
    String? endString;
    int? id;
    String? langString;
    int? langType;
    int? position;
    int? startMilli;
    String? startString;
    int? status;
    String? statusString;
    String? words;

    Line({this.createTime, this.endMilli, this.endString, this.id, this.langString, this.langType, this.position, this.startMilli, this.startString, this.status, this.statusString, this.words});

    factory Line.fromJson(Map<String, dynamic> json) {
        return Line(
            createTime: json['createTime'], 
            endMilli: json['endMilli'], 
            endString: json['endString'], 
            id: json['id'], 
            langString: json['langString'], 
            langType: json['langType'], 
            position: json['position'], 
            startMilli: json['startMilli'], 
            startString: json['startString'], 
            status: json['status'], 
            statusString: json['statusString'], 
            words: json['words'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['createTime'] = createTime;
        data['endMilli'] = endMilli;
        data['endString'] = endString;
        data['id'] = id;
        data['langString'] = langString;
        data['langType'] = langType;
        data['position'] = position;
        data['startMilli'] = startMilli;
        data['startString'] = startString;
        data['status'] = status;
        data['statusString'] = statusString;
        data['words'] = words;
        return data;
    }
}