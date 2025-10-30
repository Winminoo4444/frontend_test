class Classroom {
  final int? id;
  final String name;
  final String building;
  final String roomNumber;
  final int capacity;
  final DateTime createdAt;
  final DateTime updatedAt;

  Classroom({
    this.id,
    required this.name,
    required this.building,
    required this.roomNumber,
    required this.capacity,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'building': building,
      'room_number': roomNumber,
      'capacity': capacity,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  factory Classroom.fromMap(Map<String, dynamic> map) {
    return Classroom(
      id: map['id'],
      name: map['name'],
      building: map['building'],
      roomNumber: map['room_number'],
      capacity: map['capacity'],
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }

  Classroom copyWith({
    int? id,
    String? name,
    String? building,
    String? roomNumber,
    int? capacity,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Classroom(
      id: id ?? this.id,
      name: name ?? this.name,
      building: building ?? this.building,
      roomNumber: roomNumber ?? this.roomNumber,
      capacity: capacity ?? this.capacity,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}