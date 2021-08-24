import 'package:to_do_list/domain/model/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getAll();
  Future<bool> isExists(String id);
  Future<Task> get(String id);
  Future<Task> add(Task value);
  Future<void> save(Task value);
  Future<void> remove(String id);
  Future<void> close();
}
