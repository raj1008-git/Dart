// without abstraction problem will emerge,
class User {
  final String name;
  final String email;
  final String password;

  User({required this.name, required this.email, required this.password});
}

class UserValidator {
  bool validateEmail(String email) {
    return email.contains('@') && email.contains('.');
  }

  bool validatePassword(String password) {
    return password.length >= 8;
  }
}

// Concrete class no abstraction.
class MySQLUserRepository {
  Future<void> save(User user) async {
    print('Saving to mySql database');
  }

  Future<User?> findByEmail(String email) async {
    print('Querring mysql for $email');
    return null;
  }
}

class SMTPEmailService {
  Future<void> sendWelcomeEmail(User user) async {
    print('Sending via SMTP to : ${user.email}');
  }
}

// The UserService is now Tightly Coupled to specific Implementations.
class UserService {
  final UserValidator validator;
  final MySQLUserRepository repository;
  final SMTPEmailService emailService;

  UserService({
    required this.validator,
    required this.repository,
    required this.emailService,
  });

  Future<bool> registerUser(User user) async {
    if (!validator.validateEmail(user.email)) return false;

    await repository.save(user);
    await emailService.sendWelcomeEmail(user);
    return true;
  }
}

void main() {
  final userService = UserService(
    validator: UserValidator(),
    repository: MySQLUserRepository(),
    emailService: SMTPEmailService(),
  );
}

// Here you are locked into these specific implementations.
//Must be MySql
// MUST be SMTP
