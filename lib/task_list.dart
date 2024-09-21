import 'package:flutter/material.dart';
import 'package:to_do/taskListItem.dart';

import 'taskListItem.dart';

class taskListTab extends StatefulWidget {
  const taskListTab({super.key});

  @override
  State<taskListTab> createState() => _taskListTabState();
}

class _taskListTabState extends State<taskListTab> {
  @override
  Widget build(BuildContext context) {
    return
        TaskListItem();

  }


}
