import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_list/data/local/model/hive_task.dart';
import 'package:to_do_list/domain/enum/task_priority.dart';
import 'package:to_do_list/domain/model/task.dart';
import 'package:to_do_list/domain/repository/task_repository.dart';

@Singleton(as: TaskRepository)
class HiveTaskRepository implements TaskRepository {
  static const String _boxName = "task_box";
  final Box<HiveTask> _box;

  HiveTaskRepository._(this._box);

  @factoryMethod
  static Future<HiveTaskRepository> initAndCreate() async {
    if (!Hive.isAdapterRegistered(HiveTaskAdapter().typeId)) {
      Hive.registerAdapter(HiveTaskAdapter());
    }
    var box = await Hive.openBox<HiveTask>(_boxName);
    return HiveTaskRepository._(box);
  }

  @override
  Future<Task> add(Task value) async {
    var id = await _box.add(HiveTask(
      value.isDone,
      value.title,
      value.description,
      value.priority.index,
    ));
    return value.copyWith(id: id.toString());
  }

  @override
  Future<void> remove(String id) async {
    await _box.delete(int.parse(id));
  }

  @override
  Future<void> save(Task value) async {
    await _box.put(
      int.parse(value.id),
      HiveTask(
        value.isDone,
        value.title,
        value.description,
        value.priority.index,
      ),
    );
  }

  @override
  Future<List<Task>> getAll() async {
    return _box
        .toMap()
        .entries
        .map(
          (e) => Task(
            id: e.key.toString(),
            isDone: e.value.isDone,
            title: e.value.title,
            description: e.value.description,
            priority: TaskPriority.values[e.value.priority],
          ),
        )
        .toList();
  }

  @override
  Future<Task> get(String id) async {
    var task = _box.get(int.parse(id))!;
    return Task(
      id: id,
      isDone: task.isDone,
      title: task.title,
      description: task.description,
      priority: TaskPriority.values[task.priority],
    );
  }

  @override
  Future<bool> isExists(String id) async {
    return _box.get(int.parse(id)) != null;
  }

  @override
  @disposeMethod
  Future<void> close() async {
    await _box.close();
  }
}
