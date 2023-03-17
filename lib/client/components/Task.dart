import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child:Container(
            color: MyDecoration.lightBrown,
            
            child: CheckboxListTile(
              value: _isChecked,
              title: Text(
                "Water my plants ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: _isChecked ? MyDecoration.green : Colors.black),
              ),
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
            ),
          
        ));
  }
}
