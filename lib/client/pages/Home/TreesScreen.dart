import 'package:biome/client/components/Tree.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';

import '../../utils/Trees.dart';

class TreesScreen extends StatefulWidget {
  const TreesScreen({Key? key}) : super(key: key);

  @override
  State<TreesScreen> createState() => _TreesScreenState();
}

class _TreesScreenState extends State<TreesScreen> {
  @override
  Widget build(BuildContext context) {

    return  Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 48.0,
              width: 100,
              child: Center(
                child: Divider(
                  color: Colors.grey,
                  thickness: 4,
                ),
              ),
            ),
            const Text(
              "Location : Sidi bel abbas, El Wiam",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const Text("Planted by ; the environment oragnization",
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w600)),
             SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Divider(
                  color: MyDecoration.green,
                  thickness: 1.3,
                )),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Choose your tree',
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: MyDecoration.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    width: 280,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Image.asset("images/trees/Rectangle.png")),
                        Positioned(
                            bottom: 0,
                            left: 65,
                            child: Image.asset(
                              treescontents[index].image,
                              width: 140,
                              height: 160,
                            )),
                        Positioned(
                          bottom: 20,
                          left: 10,
                          child: Column(
                            children: [
                              SizedBox(
                                  width: 65,
                                  height: 80,
                                  child: Text(
                                    treescontents[index].title,
                                    style: const TextStyle(
                                        fontFamily: "Abel",
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: BoxDecoration(
                                    color: MyDecoration.darkBrown,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Text(
                                  treescontents[index].price,
                                  style: const TextStyle(
                                      color: Colors.white, fontFamily: 'Abel'),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Positioned(
                            bottom: 10,
                            right: 10,
                            child: Tree(),
                            )
                      ],
                    ),
                  );
                },
              ),
            ),
             SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Text('Total : 200\$',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: MyDecoration.darkBrown,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
               SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: MediaQuery.of(context).size.width * 0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: const Text("Purchase",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Poppins", fontSize: 20)),
              ),

                ],
              ),
            ),
          
          ],
        ),
      
    );
  }
}
