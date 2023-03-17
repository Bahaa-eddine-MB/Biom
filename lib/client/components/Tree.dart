import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';

class Tree extends StatefulWidget {


  const Tree(
      {Key? key,
     })
      : super(key: key);

  @override
  State<Tree> createState() => _TreeState();
}

class _TreeState extends State<Tree> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: () {
              setState(() {
                cont++;
              });
            },
            child: Image.asset("images/up.png")),
        const SizedBox(
          height: 25,
        ),
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.symmetric(
              horizontal: cont < 10
                  ? 13
                  : cont < 100
                      ? 8
                      : 4,
              vertical: 9),
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            '$cont',
            style: TextStyle(
                color: MyDecoration.darkBrown,
                fontFamily: "Adel",
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        InkWell(
            onTap: () {
              if (cont != 0) {
                setState(() {
                  cont--;
                });
              }
            },
            child: Image.asset("images/down.png"))
      ],
    );
  }
}
