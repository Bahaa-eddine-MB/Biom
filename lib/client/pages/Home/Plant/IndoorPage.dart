import 'package:biome/client/pages/Home/Plant/PlantInfo.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/indoor.dart';
import 'bottomSheetPlant.dart';

class Indoor extends StatefulWidget {
  const Indoor({super.key});

  @override
  State<Indoor> createState() => _IndoorState();
}

class _IndoorState extends State<Indoor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 18, bottom: 18, right: 20, left: 18),
          child: Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  child: Image.asset(
                    Indoorcontents[index].image,
                    height: 110,
                  )),
              Positioned(
                left: 110,
                top: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Indoorcontents[index].title,
                      style: TextStyle(
                          color: MyDecoration.green,
                          fontFamily: 'Abel',
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              BottomSheetPlant(
                                title: Indoorcontents[index].title,
                                image: Indoorcontents[index].image,
                              ));
                        },
                        child: Image.asset("images/add to my plants.png"))
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  top: 12,
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyDecoration.green,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    height: 95,
                    width: 50,
                  )),
              Positioned(
                top: 50,
                right: 18,
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => PlantInfo(
                          name: Indoorcontents[index].title,
                          image: Indoorcontents[index].image,
                          info1: Indoorcontents[index].info1,
                          info2: Indoorcontents[index].info2,
                          info3: Indoorcontents[index].info3,
                          info4: Indoorcontents[index].info4,
                          info5: Indoorcontents[index].info5,
                          info6: Indoorcontents[index].info6));
                    },
                    child: const Image(
                      image: AssetImage('images/icon.png'),
                      height: 20,
                    )),
              )
            ],
          ),
        );
      },
    ));
  }
}
