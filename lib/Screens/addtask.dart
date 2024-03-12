import 'package:flutter/material.dart';

class addtask extends StatefulWidget {
  const addtask({super.key});

  @override
  State<addtask> createState() => _addtaskState();
}

class _addtaskState extends State<addtask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          FilledButton(
            onPressed: () {},
            child: Text("Add"),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlueAccent)),
          )
        ],
      ),
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xECECECEC),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }
}
