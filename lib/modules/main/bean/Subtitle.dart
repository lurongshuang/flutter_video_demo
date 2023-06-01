
import 'package:flutter_video_demo/modules/main/bean/Line.dart';

class Subtitle {
    String? fileName;
    int? id;
    String? langString;
    int? langType;
    List<Line>? lines;
    String? url;
    String? vttFileName;
    String? vttUrl;

    Subtitle({this.fileName, this.id, this.langString, this.langType, this.lines, this.url, this.vttFileName, this.vttUrl});

    factory Subtitle.fromJson(Map<String, dynamic> json) {
        return Subtitle(
            fileName: json['fileName'], 
            id: json['id'], 
            langString: json['langString'], 
            langType: json['langType'], 
            lines: json['lines'] != null ? (json['lines'] as List).map((i) => Line.fromJson(i)).toList() : null, 
            url: json['url'], 
            vttFileName: json['vttFileName'], 
            vttUrl: json['vttUrl'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['fileName'] = fileName;
        data['id'] = id;
        data['langString'] = langString;
        data['langType'] = langType;
        data['url'] = url;
        data['vttFileName'] = vttFileName;
        data['vttUrl'] = vttUrl;
        final lines = this.lines;
        if (lines != null) {
            data['lines'] = lines.map((v) => v.toJson()).toList();
        }
        return data;
    }
}