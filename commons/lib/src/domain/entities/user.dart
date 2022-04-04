class User {
  final String name;
  final String email;
  final String? password;
  final String? friendlyLink;

  User({
    required this.name,
    required this.email,
    this.password,
    this.friendlyLink,
  });
}
