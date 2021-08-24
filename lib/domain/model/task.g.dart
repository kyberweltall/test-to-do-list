// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension TaskCopyWith on Task {
  Task copyWith({
    String? description,
    String? id,
    bool? isDone,
    TaskPriority? priority,
    String? title,
  }) {
    return Task(
      description: description ?? this.description,
      id: id ?? this.id,
      isDone: isDone ?? this.isDone,
      priority: priority ?? this.priority,
      title: title ?? this.title,
    );
  }
}
