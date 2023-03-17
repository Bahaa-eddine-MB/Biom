import 'package:flutter/material.dart';

class Commet extends StatefulWidget {
  const Commet({Key? key}) : super(key: key);

  @override
  State<Commet> createState() => _CommetState();
}

class _CommetState extends State<Commet> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "@username  1h",
                  style: TextStyle(
                      color: Colors.black, fontSize: 12, fontFamily: "Adel"),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "this is a commant",
                  style: TextStyle(
                      color: Colors.black, fontSize: 12, fontFamily: "Adel"),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          _isLiked = !_isLiked;
                        });
                      },
                      child: Image(
                        height: 20,
                        image: AssetImage(_isLiked
                            ? "images/icons/heart.png"
                            : "images/icons/heart-2.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "10",
                      style: TextStyle(
                          color: Colors.grey, fontSize: 14, fontFamily: "Adel"),
                    ),
                  ],
                )
              ],
            ),
            PopupMenuButton(
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
          ],
        ),
      ),
    );
  }
}
