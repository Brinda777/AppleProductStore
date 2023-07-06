class User {
  bool isLoggedIn = false;
  String username = '';
  String password = '';

  void login(String username, String password) {
    this.username = username;
    this.password = password;
    isLoggedIn = true;
    print('Logged in as $username');
  }

  void logout() {
    isLoggedIn = false;
    username = '';
    password = '';
    print('Logged out');
  }

  void changePassword(String newPassword) {
    if (isLoggedIn) {
      password = newPassword;
      print('Password changed successfully');
    } else {
      print('You must be logged in to change the password');
    }
  }
}

void main() {
  var user = User();

  // Initial state: not logged in
  print('User is logged in: ${user.isLoggedIn}'); // User is logged in: false

  // Logging in
  user.login('johnsmith', 'oldpassword');
  print('User is logged in: ${user.isLoggedIn}'); // User is logged in: true
  print('Current user: ${user.username}'); // Current user: johnsmith

  // Changing password
  user.changePassword('newpassword'); // Password changed successfully

  // Logging out
  user.logout();
  print('User is logged in: ${user.isLoggedIn}'); // User is logged in: false
  print('Current user: ${user.username}'); // Current user:
}
