import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_list/domain/enum/task_priority.dart';
import 'package:to_do_list/generated/l10n.dart';
import 'package:to_do_list/di/injection.dart';
import 'package:to_do_list/ui/page/task_list/cubit/task_list_cubit.dart';
import 'package:to_do_list/ui/utils/utils.dart';
import 'package:to_do_list/ui/widget/custom_placeholder.dart';

part 'components/task_list_element.dart';
part 'components/task_panel.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final TaskListCubit _cubit = getIt();

  @override
  void initState() {
    super.initState();
    _cubit.setContext(context);
  }

  @override
  Widget build(BuildContext context) {
    var l10n = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(l10n.taskList_appBar_title),
          ],
        ),
        actions: [
          IconButton(
            onPressed: _cubit.add,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder(
        bloc: _cubit,
        builder: (context, state) {
          if (state is TaskListLaded) {
            return state.tasks.isNotEmpty
                ? Scrollbar(
                    child: ListView.builder(
                      itemCount: state.tasks.length,
                      itemBuilder: (context, index) {
                        var task = state.tasks[index];
                        return _TaskListElement(
                          isDone: task.isDone,
                          priority: task.priority,
                          onDonePressed: () => _cubit.done(task.id),
                          onNotDonePressed: () => _cubit.notDone(task.id),
                          onRemovePressed: () => _cubit.remove(task.id),
                          child: _TaskPanel(
                            isDone: task.isDone,
                            title: task.title,
                            description: task.description,
                            onTap: onItemTap,
                          ),
                        );
                      },
                    ),
                  )
                : ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) => const CustomPlaceholder(),
                  );
          } else {
            return Center(
              child: Transform.scale(
                scale: 2,
                child: const CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }

  void onItemTap(BuildContext context) {
    var panel = Slidable.of(context)!;
    if (panel.widget.controller?.activeState != null) {
      panel.close();
    } else {
      panel.open(actionType: SlideActionType.primary);
    }
  }
}
