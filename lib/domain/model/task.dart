import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:to_do_list/domain/enum/task_priority.dart';

part 'task.g.dart';

@CopyWith()
@immutable
class Task {
  final String id;
  final bool isDone;
  final String title;
  final String description;
  final TaskPriority priority;

  const Task({
    required this.id,
    required this.isDone,
    required this.title,
    required this.description,
    required this.priority,
  });
}
