import 'package:biome/client/pages/Home/Community/CommunityPage.dart';
import 'package:biome/client/pages/Home/Plant/PlantsPage.dart';
import 'package:biome/client/pages/Home/Profile/ProfilePage.dart';
import 'package:biome/client/pages/Home/homeScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getSelectedPage(index: current),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: CurvedNavigationBar(
          color: Colors.white,
          onTap: (index) {
            setState(() {
              current = index;
            });
          },
          items: [
            Image(
              image: AssetImage(current == 0
                  ? "images/icons/tree.png"
                  : "images/icons/tree-1.png"),
              width: 45,
            ),
            Image(
              image: AssetImage(current == 1
                  ? "images/icons/people-1.png"
                  : "images/icons/people.png"),
              width: 45,
            ),
            Image(
              image: AssetImage(current == 2
                  ? "images/icons/potted-plant-1.png"
                  : "images/icons/potted-plant.png"),
              width: 45,
            ),
            Image(
              image: AssetImage(current == 3
                  ? "images/icons/user-1.png"
                  : "images/icons/user.png"),
              width: 45,
            ),
          ],
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }

  Widget getSelectedPage({required int index}) {
    late Widget widget;
    switch (index) {
      case 0:
        widget = const HomeScreen();
        break;
      case 1:
        widget = const CommunityPage();
        break;
      case 2:
        widget = const PlantsPage();
        break;
      case 3:
        widget = const ProfilePage();
        break;
    }
    return widget;
  }
}
