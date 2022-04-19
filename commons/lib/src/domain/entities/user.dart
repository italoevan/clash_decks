class Usuario {
  final String? name;
  final String email;
  final String password;
  final String? friendlyLink;

  Usuario({
    this.name,
    required this.email,
    required this.password,
    this.friendlyLink,
  });

  bool hasFriendly() {
    return friendlyLink != null;
  }
}
