import 'package:flutter/material.dart';
import 'package:to_do_list/domain/enum/task_priority.dart';

abstract class Utils {
  static Color priorityToColor(BuildContext context, TaskPriority priority) {
    var isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    switch (priority) {
      case TaskPriority.critical:
        return Colors.redAccent;
      case TaskPriority.urgent:
        return Colors.amberAccent[100]!;
      case TaskPriority.normal:
        return Colors.blueAccent[100]!;
      case TaskPriority.optional:
        return isDarkTheme ? Colors.grey[200]! : Colors.grey;
      default:
        return Colors.grey;
    }
  }
}
