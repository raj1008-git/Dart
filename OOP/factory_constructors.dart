class DatabaseConnection {
  static DatabaseConnection? _instance; // Shared
  DatabaseConnection._internal(); // Private Constructor.

  factory DatabaseConnection() {
    _instance ??= DatabaseConnection._internal();
    return _instance!;
  }

  void connect() {
    print('Connected to Database');
  }
}


/*
var db1=DatabaseConnection();
var db2=DatabaseConnection();

You will always get the same object.
 */