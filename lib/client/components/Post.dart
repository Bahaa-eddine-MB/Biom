import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/Decoration.dart';
import 'buttomSheet.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _isLiked = false;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: MyDecoration.green,
                                shape: BoxShape.circle,
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "@alex_2",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "G.alex97@yahoo.com",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.13,
                            bottom: 5,
                            top: 25),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: const Text(
                            "I would love to share with you my little collection",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width * 0.02,
                    child: PopupMenuButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: 25,
                      ),
                      onSelected: (value) async {},
                      itemBuilder: (BuildContext) {
                        return [
                          PopupMenuItem(
                            value: '1',
                            child: Row(
                              children: const [
                                Icon(Icons.delete),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("Delete"),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: '2',
                            child: Row(
                              children: const [
                                Icon(Icons.edit_calendar_outlined),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("Edit"),
                              ],
                            ),
                          )
                        ];
                      },
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onDoubleTap: () {
                        setState(() {
                          _isLiked = !_isLiked;
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: const Image(
                          image: AssetImage("images/test.jpg"),
                          fit: BoxFit.cover,
                          height: 200,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 30,
                      left: 30,
                      child: Row(
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              setState(() {
                                _isLiked = !_isLiked;
                              });
                            },
                            child: Image(
                              height: 30,
                              image: AssetImage(_isLiked
                                  ? "images/icons/heart.png"
                                  : "images/icons/heart-1.png"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Get.bottomSheet(
                                const CommentSheet(),
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                              );
                            },
                            child: const Image(
                              height: 34,
                              image: AssetImage("images/icons/chat.png"),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15.0, bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "2 days ago",
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

