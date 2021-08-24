import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/domain/model/task.dart';
import 'package:to_do_list/domain/service/task_service.dart';
import 'package:to_do_list/ui/page/add_task/add_task_page.dart';

part 'task_list_state.dart';

@lazySingleton
class TaskListCubit extends Cubit<TaskListState> {
  final TaskService _taskService;
  late final StreamSubscription _changedSubscription;
  late BuildContext _context;

  TaskListCubit(this._taskService) : super(TaskListInitial()) {
    _changedSubscription =
        _taskService.changeObservable.listen(_onChangedListener);
    tasksUpdate();
  }

  void _onChangedListener(void _) {
    tasksUpdate();
  }

  void setContext(BuildContext context) {
    _context = context;
  }

  Future<void> tasksUpdate() async {
    var tasks = await _taskService.getTasks()
      ..sort((a, b) {
        var result = a.priority.index.compareTo(b.priority.index);
        if (result == 0) {
          result = a.title.compareTo(b.title);
        }
        return result;
      });
    emit(TaskListLaded(tasks));
  }

  Future<void> done(String id) async {
    await _taskService.done(id);
  }

  Future<void> notDone(String id) async {
    await _taskService.notDone(id);
  }

  Future<void> remove(String id) async {
    await _taskService.remove(id);
  }

  Future<void> add() async {
    await Navigator.push(
      _context,
      MaterialPageRoute(builder: (_) => const AddTaskPage()),
    );
  }

  @disposeMethod
  @override
  Future<void> close() async {
    await _changedSubscription.cancel();
    await super.close();
  }
}
