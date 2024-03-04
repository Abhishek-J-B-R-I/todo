import 'package:flutter/material.dart';
import 'package:todo/Screens/todotile.dart';
class todolist extends StatelessWidget {
  const todolist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        todotile(),
        todotile(),
      ],
    );
  }
}