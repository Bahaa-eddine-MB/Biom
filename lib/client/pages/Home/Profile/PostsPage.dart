import 'package:biome/client/components/Post.dart';
import 'package:flutter/cupertino.dart';


class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: Column(
          children: const  [
            Post(),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
    ));
  }
}