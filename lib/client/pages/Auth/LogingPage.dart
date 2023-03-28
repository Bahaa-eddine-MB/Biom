import 'package:biome/client/pages/Auth/PasswordRecoverPage.dart';
import 'package:biome/client/pages/Auth/SignUpPage.dart';
import 'package:biome/client/pages/Home/HomePage.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/TextFeildDecoration.dart';

class LogingPage extends StatefulWidget {
  const LogingPage({Key? key}) : super(key: key);

  @override
  State<LogingPage> createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  final formKey = GlobalKey<FormState>();
  late String username, password;
  bool _isNotVisible = true;
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
                      const Text(
                        "Welcome back !",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              onSaved: (val) {
                                username = val!;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "This field cannot be empty!";
                                }

                                return null;
                              },
                              decoration: TextInputDecoration.getInputDecoration(labelText: "Username")
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            TextFormField(
                              onSaved: (val) {
                                password = val!;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "This field cannot be empty!";
                                } else if (val.length < 8) {
                                  return "Password length cannot be less than 8 characters";
                                }
                                return null;
                              },
                            
                              obscureText: _isNotVisible,
                              decoration: InputDecoration(
                                errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      width: 2.5,
                                      color: Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        const BorderSide(color: Colors.red)),
                                suffixIcon: IconButton(
                                  icon: Icon(_isNotVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  color: MyDecoration.green,
                                  onPressed: () {
                                    setState(() {
                                      _isNotVisible = !_isNotVisible;
                                    });
                                  },
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 17),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: MyDecoration.green),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: "Password",
                                labelStyle: const TextStyle(
                                    color: Colors.grey, fontFamily: "Poppins"),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2.5,
                                      color: MyDecoration.green,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Get.to(() => const PasswordRecover());
                                    },
                                    child: const Text("Password recovery")),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                formKey.currentState?.save();
                         
                                if (formKey.currentState!.validate()) {
                                  Get.to(() => const HomePage());
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.26),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40))),
                              child: const Text("Sign in",
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
                                  Get.to(() => const SignUpPage());
                                },
                                child: const Text(
                                  "Create an account",
                                  style: TextStyle(fontSize: 20),
                                )),
                            const SizedBox(
                              height: 40,
                            )
                          ],
                        ),
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
