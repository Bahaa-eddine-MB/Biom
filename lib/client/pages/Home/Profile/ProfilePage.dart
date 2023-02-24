import 'package:biome/client/pages/Home/Profile/PostsPage.dart';
import 'package:biome/client/pages/Home/Profile/TasksPage.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Image(
                  image: AssetImage("images/icons/Icon.png"),
                  height: 30,
                  width: 40,
                ),
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(size: 30, Icons.edit_note_outlined))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  color: MyDecoration.green,
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 100,
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
                children:  [
                  TabBar(
                    tabs: const [
                      Tab(
                        text: "POSTS"
                      ),
                      Tab(
                        text:"TASKS"
                      ),
                    ],
                    labelColor: MyDecoration.green,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                                fontFamily: "Poppins",color: MyDecoration.green),
                 
                    ),
                  
                  const Expanded(
                    child: TabBarView(
                      children: [
                        // Content of Tab 1
                        PostsPage(),
                        // Content of Tab 2
                        TasksPage()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
