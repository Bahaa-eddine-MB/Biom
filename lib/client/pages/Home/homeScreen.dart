import 'package:biome/client/pages/Home/TreesScreen.dart';
import 'package:biome/client/pages/Home/mapScree.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(           
            'images/trees/space.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
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
                      InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                          },
                          child: const Image(
                            image: AssetImage('images/AppTree.png'),
                            height: 50,
                          )),
                    ],
                  ),
                  Image.asset(
                    "images/trees/pngwing 2.png",
                    width: MediaQuery.of(context).size.width*0.9,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(()=> const MapScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.28,vertical: 12),
                      primary:
                          Colors.grey.withOpacity(0.7), // Set the background color to grey
                      onPrimary: MyDecoration.green, // Set the text color to green
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            40), // Set the border radius to 20
                        side:  BorderSide(
                          color: MyDecoration.green, // Set the border color to green
                          width: 3,
                        ),
                      ),
                    ),
                    child:  const Text(
                      'Buy a tree',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Poppins"
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
