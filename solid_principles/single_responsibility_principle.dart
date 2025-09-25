class User {
  String name;
  String email;
  String password;

  User({required this.name, required this.email, required this.password});

  bool validateEmail() {
    return email.contains('@') && email.contains('.');
  }

  bool validatePassword() {
    return password.length >= 8;
  }

  Future<void> saveToDatabase() async {
    print('Connecting to Database');
    print('Saving user: $name, $email');
  }

  Future<User?> loadFromDatabase(String email) async {
    print('Loading user with email');
    return null;
  }

  Future<void> sendWelcomeEmail() async {
    print('sending Welcome email, to $email');
  }

  String encryptPassword() {
    return 'encrypted $password';
  }
}
