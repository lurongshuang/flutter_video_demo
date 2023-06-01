import 'package:flutter_video_demo/modules/main/bean/HighlightWord.dart';
import 'package:flutter_video_demo/modules/main/bean/Social.dart';
import 'package:flutter_video_demo/modules/main/bean/Subtitle.dart';
import 'package:flutter_video_demo/modules/main/bean/User.dart';
import 'package:flutter_video_demo/modules/main/bean/Video.dart';
import 'package:flutter_video_demo/modules/main/bean/Word.dart';

class Captions {
    String? createTime;
    List<HighlightWord>? highlightWords;
    int? id;
    String? langString;
    int? langType;
    Social? social;
    int? status;
    String? statusString;
    List<Subtitle>? subtitles;
    String? text;
    int? type;
    String? typeString;
    String? updateTime;
    User? user;
    Video? video;
    List<Word>? words;

    Captions({this.createTime, this.highlightWords, this.id, this.langString, this.langType, this.social, this.status, this.statusString, this.subtitles, this.text, this.type, this.typeString, this.updateTime, this.user, this.video, this.words});

    factory Captions.fromJson(Map<String, dynamic> json) {
        return Captions(
            createTime: json['createTime'], 
            highlightWords: json['highlightWords'] != null ? (json['highlightWords'] as List).map((i) => HighlightWord.fromJson(i)).toList() : null, 
            id: json['id'], 
            langString: json['langString'], 
            langType: json['langType'], 
            social: json['social'] != null ? Social.fromJson(json['social']) : null, 
            status: json['status'], 
            statusString: json['statusString'], 
            subtitles: json['subtitles'] != null ? (json['subtitles'] as List).map((i) => Subtitle.fromJson(i)).toList() : null, 
            text: json['text'],
            type: json['type'], 
            typeString: json['typeString'], 
            updateTime: json['updateTime'], 
            user: json['user'] != null ? User.fromJson(json['user']) : null, 
            video: json['video'] != null ? Video.fromJson(json['video']) : null, 
            words: json['words'] != null ? (json['words'] as List).map((i) => Word.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['createTime'] = createTime;
        data['id'] = id;
        data['langString'] = langString;
        data['langType'] = langType;
        data['status'] = status;
        data['statusString'] = statusString;
        data['type'] = type;
        data['typeString'] = typeString;
        data['updateTime'] = updateTime;
        final highlightWords = this.highlightWords;
        if (highlightWords != null) {
            data['highlightWords'] = highlightWords.map((v) => v.toJson()).toList();
        }
        final social = this.social;
        if (social != null) {
            data['social'] = social.toJson();
        }
        final subtitles = this.subtitles;
        if (subtitles != null) {
            data['subtitles'] = subtitles.map((v) => v.toJson()).toList();
        }
        final text = this.text;
        if (text != null) {
            data['text'] = text.toString();
        }
        final user = this.user;
        if (user != null) {
            data['user'] = user.toJson();
        }
        final video = this.video;
        if (video != null) {
            data['video'] = video.toJson();
        }
        final words = this.words;
        if (words != null) {
            data['words'] = words.map((v) => v.toJson()).toList();
        }
        return data;
    }
}