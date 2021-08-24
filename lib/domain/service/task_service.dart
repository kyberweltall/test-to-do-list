import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:to_do_list/domain/model/task.dart';
import 'package:to_do_list/domain/repository/task_repository.dart';

@lazySingleton
class TaskService {
  final TaskRepository _repository;
  final PublishSubject<void> _changeObservable = PublishSubject<void>();
  PublishSubject<void> get changeObservable => _changeObservable;

  TaskService(this._repository);

  Future<Task> add(Task task) async {
    var result = await _repository.add(task);
    if (result.id.isNotEmpty) {
      _changeObservable.add(null);
    }
    return result;
  }

  Future<void> done(String id) async {
    if (await _repository.isExists(id)) {
      var task = (await _repository.get(id)).copyWith(isDone: true);
      await _repository.save(task);
      _changeObservable.add(null);
    }
  }

  Future<void> notDone(String id) async {
    if (await _repository.isExists(id)) {
      var task = (await _repository.get(id)).copyWith(isDone: false);
      await _repository.save(task);
      _changeObservable.add(null);
    }
  }

  Future<void> remove(String id) async {
    await _repository.remove(id);
    _changeObservable.add(null);
  }

  Future<List<Task>> getTasks() async {
    return _repository.getAll();
  }

  @disposeMethod
  Future<void> dispose() async {
    _changeObservable.close();
  }
}
