class RegisterRequestModel {
  String? name;
  String? email;
  String? password;
  String? rePassword;
  String? phone;

  RegisterRequestModel(
      {this.name, this.email, this.password, this.rePassword, this.phone});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    rePassword = json['rePassword'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['rePassword'] = rePassword;
    data['phone'] = phone;
    return data;
  }
}
