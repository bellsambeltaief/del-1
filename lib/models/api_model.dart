class ApiModel {
  ApiModel({
    required this.regNo,
    required this.email,
    required this.name,
    required this.mobile,
    required this.password,
  });
  String regNo;
  String email;
  String name;
  String mobile;
  String password;

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        regNo: json["regNo"],
        email: json["email"],
        name: json["name"],
        mobile: json["mobile"],
        password: json["password"],
      );
}
