import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Tasks extends Equatable {
  final String title;
  bool? isDone;
  bool? isDeleted;

  

  Tasks({
    required this.title,
    this.isDone,
    this.isDeleted,
  }) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  Tasks copyWith({
    String? title,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Tasks(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory Tasks.fromMap(Map<String, dynamic> map) {
    return Tasks(
      title: map['title'] ?? '',
      isDone: map['isDone'],
      isDeleted: map['isDeleted'],
    );
  }

  @override
  List<Object?> get props => [
        title,
        isDone,
        isDeleted,
      ];
}
