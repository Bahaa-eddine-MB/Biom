import 'package:flutter/material.dart';

import '../../../utils/Decoration.dart';
import 'PostsPage.dart';
import 'TasksPage.dart';

class ProfileInfo extends StatefulWidget {
  ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [

          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: MyDecoration.green,
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 80,
                    )),
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "George Alexander",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Poppins", fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "@alex_2",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: "Poppins", color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "G.alex97@yahoo.com",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: "Poppins", color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: const [
                      Tab(text: "POSTS"),
                      Tab(text: "TASKS"),
                    ],
                    labelColor: MyDecoration.green,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        color: MyDecoration.green),
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [PostsPage(), TasksPage()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
    );
  }
}