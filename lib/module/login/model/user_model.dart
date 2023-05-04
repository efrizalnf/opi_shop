// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String token;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      firstName: json['firstName'] ?? 'firstname',
      lastName: json['lastName'] ?? 'lastname',
      gender: json['gender'] ?? 'male',
      image: json['image'] ?? 'image',
      token: json['token'] ?? 'token',
    );
  }

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image, token: $token)';
  }
}
