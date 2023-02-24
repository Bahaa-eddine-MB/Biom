import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        elevation: 0, // remove the default Card shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                blurRadius: 10.0,
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Social Media Post",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.settings),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(15.0),
                  child: const Image(
                    image: AssetImage("images/test.jpg"),
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.thumb_up),
                        SizedBox(width: 8),
                        Text("Likes"),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.comment),
                        SizedBox(width: 8),
                        Text("Comments"),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, bottom: 8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "24 Feb 2023",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
