import 'package:biome/client/pages/Home/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/Decoration.dart';

class ConfirmEmailPage extends StatefulWidget {
  const ConfirmEmailPage({Key? key}) : super(key: key);

  @override
  State<ConfirmEmailPage> createState() => _ConfirmEmailPageState();
}

class _ConfirmEmailPageState extends State<ConfirmEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyDecoration.green,
      body: Stack(
        children: [
          const Positioned(
              right: 25, child: Image(image: AssetImage("images/back.png"))),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Container(
                  margin: const EdgeInsets.only(top: 90),
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          const Text(
                            "Check the email we sent you to access our application",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontFamily: "Poppins"),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.snackbar(
                                "Email validation",
                                "Email has been resent successfully",
                                icon: const Icon(Icons.email_rounded,
                                    color: Colors.white),
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: MyDecoration.green,
                                borderRadius: 20,
                                margin: const EdgeInsets.all(15),
                                colorText: Colors.white,
                                duration: const Duration(seconds: 3),
                                forwardAnimationCurve: Curves.easeOutBack,
                              );
                              Get.to(()=>const HomePage());
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            child: const Text("Resend",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 20)),
                          ),
                          const SizedBox(
                            height: 40,
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
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Transform.rotate(
                                  angle: 180 * 0.0174533,
                                  child: const Image(
                                    image: AssetImage("images/icon.png"),
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                (Image(
                  image: AssetImage("images/logo.png"),
                  width: 150,
                  height: 60,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
