// class Bank{
//   Bank({
//     required this.name,
//     required this.abn,
//     required this.loc,
//     required this.createdAnamt,
//     required this.lastActive,
//     required this.id,
//     required this.isOnline,
//     required this.pushToken,
//     required this.email,
//   });
//   late  String image;
//   late  String name;
//   late  String about;
//   late  String createdAt;
//   late  String lastActive;
//   late  String id;
//   late  bool isOnline;
//   late  String pushToken;
//   late  String email;
//
//   ChatUser.fromJson(Map<String, dynamic> json){
//     image = json['image']??'';
//     name = json['name']??'';
//     about = json['about']??'';
//     createdAt = json['created_at']??'';
//     lastActive = json['last_active']??'';
//     id = json['id']??'';
//     isOnline = json['is_online']??false;
//     pushToken = json['push_token']??'';
//     email = json['email']??'';
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['image'] = image;
//     _data['name'] = name;
//     _data['about'] = about;
//     _data['created_at'] = createdAt;
//     _data['last_active'] = lastActive;
//     _data['id'] = id;
//     _data['is_online'] = isOnline;
//     _data['push_token'] = pushToken;
//     _data['email'] = email;
//     return _data;
//   }
// }