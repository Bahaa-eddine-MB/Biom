import 'package:biome/client/pages/Home/Community/CommunityTimeLine.dart';
import 'package:biome/client/pages/Home/Community/Notifications.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage>
     {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: const SizedBox(),
     
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
           Container(
                margin: const EdgeInsets.only(right: 25),
                child: GestureDetector(
                    onTap: () {
                    Get.to(()=> const Notifications());
                    },
                    child:  Icon(
                      Icons.notifications_active_outlined,
                      size: 35,
                      color: MyDecoration.green,
                    )),
              )
        ],
      ),
      body:  const CommunityTimeLine(),
    );
  }
}
