import 'package:flutter/material.dart';
import 'package:todo/Screens/todolist.dart';






class todotile extends StatelessWidget {
final String title1;
final bool ischecked1;
final void Function(bool?) callbackfuncheckbox;
todotile({required this.title1, required this.ischecked1,required this.callbackfuncheckbox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title1,style: TextStyle(decoration: ischecked1?TextDecoration.lineThrough:null),),
      trailing: Checkbox(value: ischecked1,onChanged: callbackfuncheckbox,),
    );
  }
}

//this commented code for explaination or learning only where we learn how one statful widget workd with stateless widget here i change checkbox which is stateless widget with the helpt of statefull widget
/*
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
*/