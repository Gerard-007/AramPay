class LoginResponseModel {
  final String token;
  final String serviceNumber;
  final String expiration;
  final String error;

  LoginResponseModel(
      {this.token, this.serviceNumber, this.expiration, this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      serviceNumber: json["user"] != null ? json["user"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String serviceNumber;
  String password;

  LoginRequestModel({
    this.serviceNumber,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'service_number': serviceNumber.trim(),
      'password': password.trim(),
    };

    return map;
  }
}
