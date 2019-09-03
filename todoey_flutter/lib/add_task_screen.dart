import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTasktitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w200),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(),
              onChanged: (newValue) {
                newTasktitle = newValue;
              },
            ),
            Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTasktitle);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
