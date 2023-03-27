import 'package:biome/client/pages/Home/Plant/DiseasePage.dart';
import 'package:biome/client/pages/Home/Plant/IdPlantPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/Decoration.dart';

class ScanResult extends StatefulWidget {
  const ScanResult({Key? key}) : super(key: key);

  @override
  State<ScanResult> createState() => _ScanResult();
}

class _ScanResult extends State<ScanResult> with TickerProviderStateMixin {
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
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/icons/blur.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
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
                const SizedBox(height: 40,),
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
                            Tab(text: "Identification"),
                            Tab(text: "Disease"),
                          ],
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyDecoration.green,
                          ),
                          labelColor: Colors.white,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: "Poppins",
                              color: MyDecoration.green),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [IdPlantPage(), DiseasePage()],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
