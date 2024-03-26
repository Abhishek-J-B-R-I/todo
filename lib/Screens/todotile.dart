import 'package:flutter/material.dart';
import 'package:todo/Screens/todolist.dart';

class todotile extends StatefulWidget {
  const todotile({
    super.key,
  });

  @override
  State<todotile> createState() => _todotileState();
}

class _todotileState extends State<todotile> {
  bool isCheckedd = true;
/*
  void functionforcut(bool? checkstate) {
    setState(() {
      isCheckedd = checkstate!;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "create TODO app",
        style: TextStyle(
            decoration: isCheckedd ? TextDecoration.lineThrough : null),
      ),
      trailing: ischeckbox(
        ischecked: isCheckedd,
        funn: (bool? checkstate) {
          setState(() {
            isCheckedd = checkstate!;
          });
        },
      ),
    );
  }
}
//
class ischeckbox extends StatelessWidget {
  final bool ischecked;
  final void Function(bool?) funn;
  ischeckbox({required this.ischecked, required this.funn});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischecked,
      onChanged: funn,
    );
  }
}
