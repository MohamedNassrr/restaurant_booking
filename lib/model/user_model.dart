class UserModel {
  String? name;
  String? uId;
  String? phone;
  String? email;

  UserModel({
    this.name,
    this.uId,
    this.phone,
    this.email,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uId = json['uId'];
    phone = json['phone'];
    email = json['email'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uId': uId,
      'phone': phone,
      'email': email,
    };
  }
}
