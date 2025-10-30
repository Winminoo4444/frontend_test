class User {
  final int? id;
  final String email;
  final String password;
  final String role;
  final String? fullName;
  final String? studentId;
  final DateTime createdAt;

  User({
    this.id,
    required this.email,
    required this.password,
    required this.role,
    this.fullName,
    this.studentId,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'role': role,
      'full_name': fullName,
      'student_id': studentId,
      'created_at': createdAt.toIso8601String(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      email: map['email'],
      password: map['password'],
      role: map['role'],
      fullName: map['full_name'],
      studentId: map['student_id'],
      createdAt: DateTime.parse(map['created_at']),
    );
  }

  User copyWith({
    int? id,
    String? email,
    String? password,
    String? role,
    String? fullName,
    String? studentId,
    DateTime? createdAt,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
      role: role ?? this.role,
      fullName: fullName ?? this.fullName,
      studentId: studentId ?? this.studentId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}