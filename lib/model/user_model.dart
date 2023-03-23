class UserModel {
  String? name;
  String? uId;
  String? phone;
  String? email;
  String? id;

  UserModel({
    this.name,
    this.uId,
    this.phone,
    this.email,
    this.id,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uId = json['uId'];
    phone = json['phone'];
    email = json['email'];
    id = json['id'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uId': uId,
      'phone': phone,
      'id': id,
    };
  }
}
