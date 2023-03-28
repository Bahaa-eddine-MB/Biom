import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/Decoration.dart';
import '../../../utils/outdoor.dart';
import 'PlantInfo.dart';

class MyPlants extends StatefulWidget {
  const MyPlants({super.key});

  @override
  State<MyPlants> createState() => _MyPlants();
}

class _MyPlants extends State<MyPlants> {
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
                    outdoorcontents[index].image,
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
                      outdoorcontents[index].title,
                      style: TextStyle(
                          color: MyDecoration.green,
                          fontFamily: 'Abel',
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                          color: MyDecoration.green,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text("Good",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 12)),
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  top: 13,
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyDecoration.green,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    height: 92,
                    width: 50,
                  )),
              Positioned(
                top: 50,
                right: 18,
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => PlantInfo(
                          description: outdoorcontents[index].description,
                          name: outdoorcontents[index].title,
                          image: outdoorcontents[index].image,
                          info1: outdoorcontents[index].info1,
                          info2: outdoorcontents[index].info2,
                          info3: outdoorcontents[index].info3,
                          info4: outdoorcontents[index].info4,
                          info5: outdoorcontents[index].info5,
                          info6: outdoorcontents[index].info6));
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
