class Seat {
  final int? id;
  final int classroomId;
  final String seatNumber;
  final int rowNumber;
  final int columnNumber;
  final bool isAvailable;

  Seat({
    this.id,
    required this.classroomId,
    required this.seatNumber,
    required this.rowNumber,
    required this.columnNumber,
    this.isAvailable = true,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'classroom_id': classroomId,
      'seat_number': seatNumber,
      'row_number': rowNumber,
      'column_number': columnNumber,
      'is_available': isAvailable ? 1 : 0,
    };
  }

  factory Seat.fromMap(Map<String, dynamic> map) {
    return Seat(
      id: map['id'],
      classroomId: map['classroom_id'],
      seatNumber: map['seat_number'],
      rowNumber: map['row_number'],
      columnNumber: map['column_number'],
      isAvailable: map['is_available'] == 1,
    );
  }

  Seat copyWith({
    int? id,
    int? classroomId,
    String? seatNumber,
    int? rowNumber,
    int? columnNumber,
    bool? isAvailable,
  }) {
    return Seat(
      id: id ?? this.id,
      classroomId: classroomId ?? this.classroomId,
      seatNumber: seatNumber ?? this.seatNumber,
      rowNumber: rowNumber ?? this.rowNumber,
      columnNumber: columnNumber ?? this.columnNumber,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }
} 