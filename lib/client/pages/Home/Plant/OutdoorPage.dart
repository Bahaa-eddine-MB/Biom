import 'package:flutter/material.dart';

import '../../../utils/Decoration.dart';
import '../../../utils/outdoor.dart';

class Outdoor extends StatefulWidget {
  const Outdoor({super.key});

  @override
  State<Outdoor> createState() => _OutdoorState();
}

class _OutdoorState extends State<Outdoor> {
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
                  bottom: 10, child: Image.asset(outdoorcontents[index].image)),
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
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){},
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
                    onTap: () {},
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
