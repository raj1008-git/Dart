// Good Approach is Seperate responsibilities into different classes.

class User {
  final String name;
  final String email;

  User(this.name, this.email);
}

class UserValidator {
  bool isValidEmail(String email) {
    return email.contains('@') && email.length > 3;
  }

  bool isValidName(String name) {
    return name.isNotEmpty && name.length >= 3;
  }
}

class UserRepository {
  void save(User user) {
    print('Saving user ${user.name} to database...');
  }

  User? findByEmail(String email) {
    //Database logic here.
    return null;
  }
}

class EmailService {
  void sendWelcomeEmail(User user) {
    print('Sending welcome email to ${user.email}');
  }
}
