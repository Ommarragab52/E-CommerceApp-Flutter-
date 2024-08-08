class LoginResponse {
  bool? status;
  String? message;
  dynamic data;
  LoginResponse({
    this.status,
    this.message,
    this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
        status: json['status'], message: json['message'], data: json['data']);
  }
}

class UserModel {
  String? name;
  String? id;
  String? email;
  String? phone;
  String? image;
  int? points;
  int? credit;
  String? token;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.image,
      this.points,
      this.credit,
      this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        credit: json['credit'],
        email: json['email'],
        image: json['image'],
        name: json['name'],
        phone: json['phone'],
        points: json['points'],
        token: json['token']);
  }
}
