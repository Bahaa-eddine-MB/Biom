import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';

class IdPlantPage extends StatelessWidget {
  const IdPlantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/indoor/plant2.png",
            height: 350,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/icons/Rectangle 12.png"),
                    fit: BoxFit.fill)),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'This plant is :',
                      style: TextStyle(
                          color: MyDecoration.green,
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Spider plant!",
                        style: TextStyle(fontFamily: "Abel", fontSize: 18))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
