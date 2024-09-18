import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/data_model.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataModel>(
      builder: (context, dataModel, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = dataModel.tasks[index];
            return TaskTile(
              title: task.title,
              isChecked: task.isChecked,
              checkBoxCallback: (state) => dataModel.toggleCheckbox(task),
              longPressCallback: () => dataModel.deleteCheckbox(task),
            );
          },
          itemCount: dataModel.taskCount,
        );
      },
    );
  }
}
