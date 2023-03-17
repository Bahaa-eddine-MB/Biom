import 'package:biome/client/pages/Home/Community/ComPosts.dart';
import 'package:biome/client/pages/Home/Community/CreatePost.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/Decoration.dart';

class CommunityTimeLine extends StatefulWidget {
  const CommunityTimeLine({Key? key}) : super(key: key);

  @override
  State<CommunityTimeLine> createState() => _CommunityTimeLineState();
}

class _CommunityTimeLineState extends State<CommunityTimeLine>
    with TickerProviderStateMixin {
  late TabController tabController;


  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10)),
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        controller: tabController,
                        tabs: const [
                          Tab(text: "Top"),
                          Tab(text: "Latest"),
                        ],
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyDecoration.green,
                        ),
                        labelColor: Colors.white,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Poppins",
                            color: MyDecoration.green),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  onTap: () {
                    setState(() {
                      Get.to(()=>const  CreatePost());
                    });
                  },
                  child: Ink(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyDecoration.green,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add a post ",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: MyDecoration.green,
                              fontSize: 25),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.edit_calendar_rounded,
                          color: MyDecoration.green,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [ComPosts(), ComPosts()],
                ),
              ),
            ],
          );
      
    
  }
}
