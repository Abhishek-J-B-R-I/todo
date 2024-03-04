import 'package:flutter/material.dart';
import 'package:todo/Screens/todolist.dart';

class todotile extends StatelessWidget {
  const todotile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("create TODO app"),trailing: Checkbox(value: false, onChanged: (value) {

    },),
    );
  }
}
