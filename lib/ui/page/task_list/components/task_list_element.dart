part of '../task_list_page.dart';

class _TaskListElement extends StatelessWidget {
  static final Color kDoneActionColor = Colors.greenAccent;
  static final Color kNotDoneActionColor = Colors.orangeAccent;
  static final Color kRemoveActionColor = Colors.redAccent;
  final Widget child;
  final bool isDone;
  final TaskPriority priority;
  final VoidCallback onDonePressed;
  final VoidCallback onNotDonePressed;
  final VoidCallback onRemovePressed;

  const _TaskListElement({
    Key? key,
    required this.child,
    required this.isDone,
    required this.priority,
    required this.onDonePressed,
    required this.onNotDonePressed,
    required this.onRemovePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var l10n = S.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: kTabLabelPadding.left),
      decoration: BoxDecoration(
        boxShadow: isDone
            ? null
            : [
                BoxShadow(
                  color: Utils.priorityToColor(context, priority),
                  spreadRadius: kMaterialListPadding.top,
                  blurRadius: kTabLabelPadding.right,
                ),
              ],
      ),
      child: Slidable(
          actionPane: const SlidableDrawerActionPane(),
          child: child,
          actions: [
            IconSlideAction(
              caption: isDone
                  ? l10n.taskList_element_notDone
                  : l10n.taskList_element_done,
              color: isDone ? kNotDoneActionColor : kDoneActionColor,
              icon: isDone ? Icons.refresh : Icons.done,
              onTap: isDone ? onNotDonePressed : onDonePressed,
            ),
          ],
          secondaryActions: [
            IconSlideAction(
              caption: l10n.taskList_element_remove,
              color: kRemoveActionColor,
              icon: Icons.delete,
              onTap: onRemovePressed,
            )
          ],
          controller: SlidableController()),
    );
  }
}
