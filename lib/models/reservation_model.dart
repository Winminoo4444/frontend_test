class Reservation {
  final int? id;
  final int userId;
  final int seatId;
  final int classroomId;
  final DateTime reservationDate;
  final String startTime;
  final String endTime;
  final String status; // 'pending', 'confirmed', 'cancelled', 'completed'
  final DateTime createdAt;

  Reservation({
    this.id,
    required this.userId,
    required this.seatId,
    required this.classroomId,
    required this.reservationDate,
    required this.startTime,
    required this.endTime,
    required this.status,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': userId,
      'seat_id': seatId,
      'classroom_id': classroomId,
      'reservation_date': reservationDate.toIso8601String(),
      'start_time': startTime,
      'end_time': endTime,
      'status': status,
      'created_at': createdAt.toIso8601String(),
    };
  }

  factory Reservation.fromMap(Map<String, dynamic> map) {
    return Reservation(
      id: map['id'],
      userId: map['user_id'],
      seatId: map['seat_id'],
      classroomId: map['classroom_id'],
      reservationDate: DateTime.parse(map['reservation_date']),
      startTime: map['start_time'],
      endTime: map['end_time'],
      status: map['status'],
      createdAt: DateTime.parse(map['created_at']),
    );
  }

  Reservation copyWith({
    int? id,
    int? userId,
    int? seatId,
    int? classroomId,
    DateTime? reservationDate,
    String? startTime,
    String? endTime,
    String? status,
    DateTime? createdAt,
  }) {
    return Reservation(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      seatId: seatId ?? this.seatId,
      classroomId: classroomId ?? this.classroomId,
      reservationDate: reservationDate ?? this.reservationDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}