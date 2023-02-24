import 'package:biome/client/pages/Auth/ConfirmEmailPage.dart';
import 'package:biome/client/pages/Auth/LogingPage.dart';
import 'package:flutter/material.dart';
import 'package:biome/client/utils/Decoration.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  bool _isNotVisible = true;
  bool _isNotVisible2 = true;
  late String name, username, email, password, confirmpassword;
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
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              onSaved: (val) {
                                name = val!;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "This field cannot be empty!";
                                } else if (val.length < 3) {
                                  return "Name cannot me less than 3 characters";
                                }
                                return null;
                              },
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
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 17),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: MyDecoration.green),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: "Name",
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
                            const SizedBox(
                              height: 35,
                            ),
                            TextFormField(
                              onSaved: (val) {
                                username = val!;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "This field cannot be empty!";
                                } else if (val.length < 3) {
                                  return "UserName cannot me less than 3 characters";
                                }
                                return null;
                              },
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
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 17),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: MyDecoration.green),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: "Username",
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
                            const SizedBox(
                              height: 35,
                            ),
                            TextFormField(
                              onSaved: (val) {
                                email = val!;
                              },
                              validator: (val) {
                                if ((val!.trim().isEmpty) ||
                                    !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                        .hasMatch(val)) {
                                  return "Enter a valid email address";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
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
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 17),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: MyDecoration.green),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: "Email Address",
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
                                  return "Password cannot me less than 8 characters";
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
                            const SizedBox(
                              height: 35,
                            ),
                            TextFormField(
                              onSaved: (val) {
                                confirmpassword = val!;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "This field cannot be empty!";
                                } else if (val != password) {
                                  return "Incorrect password";
                                }
                                return null;
                              },
                              obscureText: !_isNotVisible2,
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
                                  icon: Icon(!_isNotVisible2
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  color: MyDecoration.green,
                                  onPressed: () {
                                    setState(() {
                                      _isNotVisible2 = !_isNotVisible2;
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
                                labelText: "Confirm password",
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
                            const SizedBox(
                              height: 20,
                            ),
                            const Text("With continuing,you agree with our",
                                style: TextStyle(
                                    fontFamily: "Poppins", fontSize: 12)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Terms & Conditions",
                                style: TextStyle(
                                    color: MyDecoration.green,
                                    fontFamily: "Poppins",
                                    fontSize: 12)),
                            const SizedBox(
                              height: 40,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                formKey.currentState?.save();
                                if (formKey.currentState!.validate()) {
                                  Get.to(() => const ConfirmEmailPage());
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40))),
                              child: const Text("Sign up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontSize: 20)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account ?",
                                  style: TextStyle(
                                      fontFamily: "Poppins", fontSize: 15),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Get.to(() => const LogingPage());
                                    },
                                    child: const Text("sign in",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 15))),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
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
