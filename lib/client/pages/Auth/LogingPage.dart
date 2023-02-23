import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';

class LogingPage extends StatefulWidget {
  const LogingPage({Key? key}) : super(key: key);

  @override
  State<LogingPage> createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("data"),
      backgroundColor: MyDecoration.green,
    );
  }
}