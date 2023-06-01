
class Social {
    int? likeCount;
    bool? liked;

    Social({this.likeCount, this.liked});

    factory Social.fromJson(Map<String, dynamic> json) {
        return Social(
            likeCount: json['likeCount'], 
            liked: json['liked'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['likeCount'] = likeCount;
        data['liked'] = liked;
        return data;
    }
}