import 'package:biome/client/pages/Auth/LogingPage.dart';
import 'package:biome/client/pages/Auth/SignUpPage.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:biome/client/utils/OnbordingContent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: _controller,
          itemCount: 3,
          onPageChanged: (int i) {
            setState(() {
              currentIndex = i;
            });
          },
          itemBuilder: (_, i) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    i == 0
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              OutlinedButton(
                                  onPressed: () {
                                    _controller.animateToPage(2,
                                        duration:
                                            const Duration(milliseconds: 600),
                                        curve: Curves.easeInOut);
                                  },
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2,
                                      color: MyDecoration.green,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 30),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                  child: const Text(
                                    "Skip",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ],
                          )
                        : const SizedBox(
                            height: 10,
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage(contents[i].image),
                      height: i == 0 ? 270 : 300,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      contents[i].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Abel',
                          fontSize: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      contents[i].discription,
                      style: const TextStyle(fontFamily: 'Poppins', fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    i == 2
                        ? Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Get.to(() => const SignUpPage());
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 80),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40))),
                                child: const Text("I'm new here",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 20)),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.to(() => const LogingPage());
                                  },
                                  child: const Text(
                                    "Sign in",
                                    style: TextStyle(fontSize: 20),
                                  ))
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    3,
                                    (index) => Container(
                                          height: 10,
                                          width: currentIndex == index ? 40 : 10,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: MyDecoration.green,
                                          ),
                                        )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _controller.nextPage(
                                    duration: const Duration(milliseconds: 700),
                                    curve: Curves.ease,
                                  );
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
                                    padding: EdgeInsets.all(20.0),
                                    child: Image(
                                      image: AssetImage("images/icon.png"),
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
