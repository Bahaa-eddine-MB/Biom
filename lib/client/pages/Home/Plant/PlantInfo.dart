import 'package:biome/client/pages/Home/Plant/InfoWidget.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class PlantInfo extends StatefulWidget {
  final String description;
  final String name;
  final String image;
  final String info1;
  final String info2;
  final String info3;
  final String info4;
  final String info5;
  final String info6;

  const PlantInfo(
      {Key? key,
      required this.info1,
      required this.info2,
      required this.info3,
      required this.info4,
      required this.info5,
      required this.info6,
      required this.image,
      required this.name,
      required this.description})
      : super(key: key);

  @override
  _PlantInfoState createState() => _PlantInfoState();
}

class _PlantInfoState extends State<PlantInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyDecoration.green,
      body: CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Stack(
                  children: <Widget>[
                    Image.asset("images/circle.png"),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.235,
                        right: 0,
                        child: Container(
                          height: 50,
                          width: 210,
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 10, right: 100),
                          decoration: BoxDecoration(
                              color: MyDecoration.green,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        )),
                    Row(
                      children: [
                        Image.asset(
                          widget.image,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Image.asset("images/Like.png"),
                                const Text(
                                  "Easy care",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              widget.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Abel",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ReadMoreText(
                      widget.description,
                      trimLines: 2,
                      colorClickableText: MyDecoration.green,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Abel",
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                      moreStyle: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontFamily: "Abel",
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                      lessStyle: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontFamily: "Abel",
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                    ),
                    // Text(
                    //   widget.description,
                    //   style: const TextStyle(
                    //       color: Colors.white,
                    //       fontFamily: "Abel",
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 19),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoWidget(image: "images/icon7.png", text: widget.info1),
                    InfoWidget(image: "images/icon5.png", text: widget.info2)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoWidget(image: "images/icon3.png", text: widget.info3),
                    InfoWidget(image: "images/icon6.png", text: widget.info4)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoWidget(image: "images/icon4.png", text: widget.info5),
                    InfoWidget(image: "images/icon8.png", text: widget.info6)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
