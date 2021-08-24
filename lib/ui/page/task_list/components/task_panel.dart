part of '../task_list_page.dart';

class _TaskPanel extends StatelessWidget {
  static final Color kDoneCheckerColor = Colors.lightGreenAccent[700]!;
  final bool isDone;
  final String title;
  final String description;
  final void Function(BuildContext context) onTap;

  const _TaskPanel({
    Key? key,
    required this.isDone,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.cardColor,
      child: ListTile(
        leading: Icon(
          Icons.done,
          color: isDone ? kDoneCheckerColor : theme.cardColor,
          size: kTextTabBarHeight,
        ),
        title: Text(
          title,
        ),
        subtitle: description.isNotEmpty ? Text(description) : null,
        onTap: () => onTap(context),
      ),
    );
  }
}
