part of 'task_list_cubit.dart';

@immutable
abstract class TaskListState {}

class TaskListInitial extends TaskListState {}

class TaskListLaded extends TaskListState {
  final List<Task> tasks;

  TaskListLaded(this.tasks);
}
