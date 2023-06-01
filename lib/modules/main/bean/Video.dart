class Video {
    String? fileName;
    int? height;
    int? id;
    String? langString;
    int? langType;
    String? url;
    int? width;

    Video({this.fileName, this.height, this.id, this.langString, this.langType, this.url, this.width});

    factory Video.fromJson(Map<String, dynamic> json) {
        return Video(
            fileName: json['fileName'], 
            height: json['height'], 
            id: json['id'], 
            langString: json['langString'], 
            langType: json['langType'], 
            url: json['url'], 
            width: json['width'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['fileName'] = fileName;
        data['height'] = height;
        data['id'] = id;
        data['langString'] = langString;
        data['langType'] = langType;
        data['url'] = url;
        data['width'] = width;
        return data;
    }
}