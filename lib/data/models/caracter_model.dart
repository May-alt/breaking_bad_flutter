

class CharacterModel {
  late int charId;
  late String name;
  late String birthday;
  late String img;
  late String status;
  late String nickname;
  late String category;
  late List<String> occupation ;
  late List<int> appearance;

  CharacterModel({
    required this.charId,
    required this.name,
    required this.birthday,
    required this.img,
    required this.status,
    required this.nickname,
    required this.category,
    required this.occupation,
    required this.appearance,
  });

  CharacterModel.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    img = json['img'];
    status = json['status'];
    nickname = json['nickname'];
    occupation = json['occupation'].cast<String>();
    appearance = json['appearance'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['birthday'] = this.birthday;
    data['img'] = this.img;
    data['status'] = this.status;
    data['nickname'] = this.nickname;
    data['category'] = this.category;
    data['occupation'] = this.occupation;
    data['appearance'] = this.appearance;
    return data;
  }
}
