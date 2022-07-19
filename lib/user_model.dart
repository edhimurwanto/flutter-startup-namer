class User {
  final String name;
  final String email;
  final String gender;
  final String status;

  User(this.name, this.email, this.gender, this.status);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        gender = json['gender'],
        status = json['status'];

  Map<String, dynamic> toJson() =>
      {'name': name, 'email': email, 'gender': gender, 'status': status};
}
