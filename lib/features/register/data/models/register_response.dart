class RegisterResponse {
  bool? status;
  String? message;
  UserRegisterModel? data;
  RegisterResponse({
    this.status,
    this.message,
    this.data,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
        status: json['status'],
        message: json['message'],
        data: json['data'] != null
            ? UserRegisterModel.fromJson(json['data'])
            : null);
  }
}

class UserRegisterModel {
  String? name;
  String? id;
  String? email;
  String? phone;
  String? image;
  int? points;
  int? credit;
  String? token;

  UserRegisterModel(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.image,
      this.points,
      this.credit,
      this.token});

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) {
    return UserRegisterModel(
        id: json['id'],
        email: json['email'],
        image: json['image'],
        name: json['name'],
        phone: json['phone'],
        token: json['token']);
  }
}
