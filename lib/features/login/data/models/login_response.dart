class LoginResponse {
  bool? status;
  String? message;
  UserModel? data;
  LoginResponse({
    this.status,
    this.message,
    this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
        status: json['status'],
        message: json['message'],
        data: json['data'] != null ? UserModel.fromJson(json['data']) : null);
  }
  @override
  String toString() {
    return 'status =$status message =$message data =${data.toString()}';
  }
}

class UserModel {
  int? id;
  String? name;
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
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        image: json['image'],
        points: json['points'],
        credit: json['credit'],
        token: json['token']);
  }

  @override
  String toString() {
    return 'id =$id credit =$credit email =$email  image =$image name =$name phone =$phone points =$points token =$token';
  }
}
