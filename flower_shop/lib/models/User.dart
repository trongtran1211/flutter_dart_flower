class User {
  final String? fullName;
  final String email;
  final String? phoneNumber;
  final String? country;
  final String? gender;
  final String? address;
  final String password;

  User({
    this.fullName,
    required this.email,
    this.phoneNumber,
    this.country,
    this.gender,
    this.address,
    required this.password,
  });
}
