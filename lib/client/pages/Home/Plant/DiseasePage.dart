import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';

class DiseasePage extends StatefulWidget {
  const DiseasePage({super.key});

  @override
  State<DiseasePage> createState() => _DiseasePageState();
}

class _DiseasePageState extends State<DiseasePage> {
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
            height: 60,
          ),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                color: MyDecoration.green,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Your plant is healthy!',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Abel',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
