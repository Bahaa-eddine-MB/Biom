import 'package:flutter/material.dart';

import '../../../utils/Decoration.dart';

class InfoWidget extends StatelessWidget {
  final String image;
  final String text;
  const InfoWidget({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      height: 70,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyDecoration.green,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            height: 65,
            width: 50,
            child: Image.asset(image),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 65,
            width: MediaQuery.of(context).size.width*0.28,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child:  Center(
              child: Text(
                text,
                style: const TextStyle(fontSize: 16,fontFamily: 'Abel',fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
