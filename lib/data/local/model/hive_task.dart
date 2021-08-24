import 'package:hive_flutter/hive_flutter.dart';

part 'hive_task.g.dart';

@HiveType(typeId: 0)
class HiveTask {
  @HiveField(0)
  bool isDone;
  @HiveField(1)
  String title;
  @HiveField(2)
  String description;
  @HiveField(3)
  int priority;

  HiveTask(
    this.isDone,
    this.title,
    this.description,
    this.priority,
  );
}
