import 'package:flutter/material.dart';
import 'package:todo/Screens/todotile.dart';
import 'package:todo/module/task.dart';
class todolist extends StatefulWidget {
  const todolist({
    super.key,
  });

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {
List<Task>task=[
  Task(tasktitle: 'flutter work'),
  Task(tasktitle: 'college work'),

];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return todotile(title1: task[index].tasktitle,ischecked1: task[index].ischecked, callbackfuncheckbox: (bool? newvalue){
        setState(() {
          task[index].checkedfunction();

        });
         },);
    },itemCount: task.length,);
  }
}