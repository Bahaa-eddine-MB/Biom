import 'package:biome/client/pages/Home/Plant/IndoorPage.dart';
import 'package:biome/client/pages/Home/Plant/OutdoorPage.dart';
import 'package:flutter/material.dart';
import '../../../utils/Decoration.dart';
import '../../../utils/TextFeildDecoration.dart';

class PlantsPage extends StatefulWidget {
  const PlantsPage({Key? key}) : super(key: key);

  @override
  State<PlantsPage> createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage> with TickerProviderStateMixin {
  late TabController tabController;
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: const SizedBox(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  TextField(
          decoration: TextInputDecoration.getInputDecoration(labelText: "Search .."),
        ),
        actions: <Widget>[
         Padding(
           padding: const EdgeInsets.only(right:20.0),
           child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: (){
         
            },
            child: Image.asset("images/scan.png"),
           ),
         )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10)),
            child: DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    controller: tabController,
                    tabs: const [
                      Tab(text: "Indoor"),
                      Tab(text: "Outdoor"),
                      Tab(text: "My plants"),
                    ],
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyDecoration.green,
                    ),
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: MyDecoration.green),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [Indoor(), Outdoor(), SizedBox()],
            ),
          ),
        ],
      ),
    );
  }
}
