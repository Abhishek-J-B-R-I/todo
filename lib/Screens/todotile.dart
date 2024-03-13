import 'package:flutter/material.dart';
import 'package:todo/Screens/todolist.dart';

class todotile extends StatelessWidget {
  const todotile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("create TODO app"),
      trailing: ischeckbox(),
    );
  }
}

class ischeckbox extends StatefulWidget {


  @override
  State<ischeckbox> createState() => _ischeckboxState();
}

class _ischeckboxState extends State<ischeckbox> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischecked,
      onChanged: (newValue) {
        setState(() {
          if(newValue != null){
            ischecked=newValue;
          }
        });

      },
    );
  }
}
