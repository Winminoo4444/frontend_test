import '../database/database_helper.dart';
import '../models/user_model.dart';

class AuthService {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<User?> login(String email, String password) async {
    try {
      final userMap = await _dbHelper.getUser(email, password);
      if (userMap != null) {
        return User.fromMap(userMap);
      }
      return null;
    } catch (e) {
      print('Error during login: $e');
      return null;
    }
  }

  Future<bool> register(User user) async {
    try {
      final id = await _dbHelper.insertUser(user.toMap());
      return id > 0;
    } catch (e) {
      print('Error during registration: $e');
      return false;
    }
  }

  Future<User?> getUserById(int id) async {
    try {
      final userMap = await _dbHelper.getUserById(id);
      if (userMap != null) {
        return User.fromMap(userMap);
      }
      return null;
    } catch (e) {
      print('Error getting user: $e');
      return null;
    }
  }

  Future<bool> updateUser(User user) async {
    try {
      if (user.id == null) return false;
      final count = await _dbHelper.updateUser(user.id!, user.toMap());
      return count > 0;
    } catch (e) {
      print('Error updating user: $e');
      return false;
    }
  }

  Future<bool> deleteUser(int id) async {
    try {
      final count = await _dbHelper.deleteUser(id);
      return count > 0;
    } catch (e) {
      print('Error deleting user: $e');
      return false;
    }
  }

  Future<List<User>> getAllUsers() async {
    try {
      final userMaps = await _dbHelper.getAllUsers();
      return userMaps.map((map) => User.fromMap(map)).toList();
    } catch (e) {
      print('Error getting all users: $e');
      return [];
    }
  }
}