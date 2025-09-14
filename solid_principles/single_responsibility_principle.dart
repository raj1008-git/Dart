class Usermanager {
  bool authenticateUser(String username, String password) {
    return true;
  }

  void updateUserProfile(String username, Map<String, dynamic> profile) {
    print('User Profile updated for $username');
  }
}
// The same class is handling two different uncommon responsibility. This is the Wrong Approach.
// The solution is

class AuthManager {
  bool authenticateUser(String username, String password) {
    return true;
  }
}

class Profilemanager {
  void updateUserProfile(String username, Map<String, dynamic> profile) {
    print('User Profile updated for $username');
  }
}
