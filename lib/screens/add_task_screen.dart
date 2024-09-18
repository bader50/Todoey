import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/data_model.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String taskName = '';
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),
          ),
          TextField(
            cursorColor: Colors.lightBlueAccent,
            autofocus: true,
            onChanged: (value) => taskName = value,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<DataModel>(context, listen: false)
                  .addTaskCallback(taskName);
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlueAccent),
            ),
            child: Text(
              "Add",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
