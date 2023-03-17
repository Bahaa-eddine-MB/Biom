import 'package:biome/client/pages/Home/TreesScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/Decoration.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final formKey = GlobalKey<FormState>();
  late String name1, name2, name3, name4, name5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.center,
        children: [
          Image.asset(
            'images/trees/map.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: MyDecoration.green,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Image(
                          image: AssetImage("images/icon2.png"),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.38,
              right: MediaQuery.of(context).size.width * 0.35,
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      const TreesScreen(),
                      isScrollControlled: true,
                     
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Image.asset("images/icons/Icon3.png"))),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.42,
              right: MediaQuery.of(context).size.width * 0.1,
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      const TreesScreen(),
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Image.asset("images/icons/Icon3.png"))),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.49,
              right: MediaQuery.of(context).size.width * 0.84,
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      const TreesScreen(),
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Image.asset("images/icons/Icon3.png"))),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.67,
              right: MediaQuery.of(context).size.width * 0.67,
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      const TreesScreen(),
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Image.asset("images/icons/Icon3.png"))),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.78,
              right: MediaQuery.of(context).size.width * 0.51,
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      const TreesScreen(),
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Image.asset("images/icons/Icon3.png"))),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.76,
              right: MediaQuery.of(context).size.width * 0.26,
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      const TreesScreen(),
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Image.asset("images/icons/Icon3.png"))),
        ],
      ),
    );
  }
}
