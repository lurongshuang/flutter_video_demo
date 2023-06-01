
class User {
    String? avatar;
    int? id;
    String? mediumAvatar;
    String? name;
    String? smallAvatar;

    User({this.avatar, this.id, this.mediumAvatar, this.name, this.smallAvatar});

    factory User.fromJson(Map<String, dynamic> json) {
        return User(
            avatar: json['avatar'], 
            id: json['id'], 
            mediumAvatar: json['mediumAvatar'], 
            name: json['name'], 
            smallAvatar: json['smallAvatar'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['avatar'] = avatar;
        data['id'] = id;
        data['mediumAvatar'] = mediumAvatar;
        data['name'] = name;
        data['smallAvatar'] = smallAvatar;
        return data;
    }
}