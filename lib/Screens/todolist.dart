import 'package:flutter/material.dart';
import 'package:todo/Screens/todotile.dart';
import 'package:todo/module/task.dart';
class todolist extends StatefulWidget {
  final List<Task> tasks;

   todolist({
    required this.tasks
  });

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return todotile(title1: widget.tasks[index].tasktitle,ischecked1: widget.tasks[index].ischecked, callbackfuncheckbox: (bool? newvalue){
        setState(() {
          widget.tasks[index].checkedfunction();

        });
         },);
    },itemCount: widget.tasks.length,);
  }
}