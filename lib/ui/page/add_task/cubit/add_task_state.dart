part of 'add_task_cubit.dart';

@immutable
abstract class AddTaskState {
  final TaskPriority priority;

  const AddTaskState({required this.priority});

  AddTaskNotValid toNotValid() => AddTaskNotValid(priority: priority);
  AddTaskValid toValid() => AddTaskValid(priority: priority);
}

@CopyWith()
@immutable
class AddTaskValid extends AddTaskState {
  const AddTaskValid({required TaskPriority priority})
      : super(priority: priority);
}

@CopyWith()
@immutable
class AddTaskNotValid extends AddTaskState {
  const AddTaskNotValid({required TaskPriority priority})
      : super(priority: priority);
}
