class User {
  final String? name;
  final String email;
  final String password;
  final String? friendlyLink;

  User({
    this.name,
    required this.email,
    required this.password,
    this.friendlyLink,
  });

  bool hasFriendly() {
    return friendlyLink != null;
  }
}
