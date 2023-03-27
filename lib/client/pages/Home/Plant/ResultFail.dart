import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/Decoration.dart';

class ResultFail extends StatefulWidget {
  const ResultFail({Key? key}) : super(key: key);

  @override
  State<ResultFail> createState() => _ResultFail();
}

class _ResultFail extends State<ResultFail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/icons/blur.png'),
              fit: BoxFit.cover,
            ),
          ),
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
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: MyDecoration.green,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Image(
                          image: AssetImage("images/icon2.png"),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/icons/Man thinking.png",
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
                        image: AssetImage("images/icons/fail.png"),
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
                        const Text("Unknown",
                            style: TextStyle(fontFamily: "Abel", fontSize: 18,fontWeight: FontWeight.w500))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                     Text("Try again!",style: TextStyle(color: Colors.red,fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.w600), )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
