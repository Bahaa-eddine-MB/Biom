import 'package:biome/client/components/Post.dart';
import 'package:flutter/material.dart';


class ComPosts extends StatefulWidget {
  const ComPosts({Key? key}) : super(key: key);

  @override
  State<ComPosts> createState() => _ComPostsState();
}

class _ComPostsState extends State<ComPosts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: const [
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    ));
  }
}
